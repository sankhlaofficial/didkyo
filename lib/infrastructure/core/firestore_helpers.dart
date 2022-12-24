import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:didkyo/domain/auth/i_auth_facade.dart';
import 'package:didkyo/injection.dart';

extension FireStoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getCurrentUser();
    final user = userOption;

    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id?.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get postsCollection => collection('posts');
}
