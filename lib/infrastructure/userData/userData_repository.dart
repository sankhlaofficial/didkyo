import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:didkyo/domain/userData/i_user_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class UserDataRepository implements IUserRepository {
  final FirebaseFirestore _firebaseFirestore;

  UserDataRepository(this._firebaseFirestore);

  @override
  Future<void> createNewUser(String? emailAddress, String? displayName,
      String? photoUrl, String? id) async {
    await _firebaseFirestore.collection('users').doc(id).set({
      'id': id,
      'emailAddress': emailAddress,
      'displayName': displayName,
      'photoUrl': photoUrl
    });
  }
}
