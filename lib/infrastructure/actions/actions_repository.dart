import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:didkyo/domain/actions/base_actions_repository.dart';

class ActionsRepository extends BaseActionsRepository {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  Future<void> followUser(
      String toBeFollowedUserId, String currentUserId) async {
    await _firebaseFirestore
        .collection('users')
        .doc(toBeFollowedUserId)
        .update({
      'followers': FieldValue.arrayUnion([currentUserId])
    }).then((value) async {
      await _firebaseFirestore.collection('users').doc(currentUserId).update({
        'following': FieldValue.arrayUnion([toBeFollowedUserId])
      });
    });
  }

  @override
  Future<void> unFollowUser(
      String toBeUnFollowedUserId, String currentUserId) async {
    await _firebaseFirestore
        .collection('users')
        .doc(toBeUnFollowedUserId)
        .update({
      'followers': FieldValue.arrayRemove([currentUserId])
    }).then((value) async {
      await _firebaseFirestore.collection('users').doc(currentUserId).update({
        'following': FieldValue.arrayRemove([toBeUnFollowedUserId])
      });
    });
  }
}
