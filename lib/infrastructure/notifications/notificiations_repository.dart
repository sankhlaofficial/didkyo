import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/infrastructure/userData/userData_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:http/http.dart';

class NotificationsRepository {
  static FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  static FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  static FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  static Future<String?> getFCMToken() async {
    await firebaseMessaging.requestPermission();
    String? pushToken = await firebaseMessaging.getToken().then((value) {
      if (value != null) {
        return value;
      }
      return null;
    });
    return pushToken;
  }

  Future<void> updatePushToken(String userId) async {
    String? pushToken = await getFCMToken();
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .update({'pushToken': pushToken});
  }

  static Future<void> sendPushNotification(
      String userId, String creatorName, String locationName) async {
    UserDataRepository userDataRepository =
        UserDataRepository(_firebaseFirestore, _firebaseStorage);

    User followerUser = await userDataRepository.fetchUser(userId);
    final body = {
      'to': followerUser.pushToken,
      "notification": {
        'title': 'Hey ${followerUser.displayName}',
        'body': '${creatorName} created a new post in ${locationName} '
      }
    };
    try {
      var url = Uri.parse('https://fcm.googleapis.com/fcm/send');
      var response = await post(url,
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
            HttpHeaders.authorizationHeader:
                'key=AAAA22gd3JM:APA91bF6btNvncCITSYLY4aZEjeAO1P9fjk8Ulwd6n1t8-HJJrrle4jlZzYZ84AsrQo6kVinHUWmbSW4yx5OnktFl_csFRoeKNZoGgkWUzRV-g7vm-89f7XhblPtWSjUwCGFJnWjliRQ'
          },
          body: jsonEncode(body));
      log('Response status: ${response.statusCode}');
      log('Response body: ${response.body}');
    } catch (e) {
      log(e.toString());
    }
  }
}
