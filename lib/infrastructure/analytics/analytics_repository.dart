import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:didkyo/domain/analytics/analytics_repository_facade.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AnalyticsRepositoryFacade)
class AnalyticsRepository implements AnalyticsRepositoryFacade {
  final FirebaseFirestore _firebaseFirestore;

  AnalyticsRepository(this._firebaseFirestore);

  @override
  Future<Map<String, dynamic>> fetchAnalytics() async {
    try {
      final data = await _firebaseFirestore
          .collection('analytics')
          .doc('places')
          .get()
          .then((DocumentSnapshot doc) => doc.data() as Map<String, dynamic>);
      return data;
    } catch (error) {
      log(error.toString());
    }
    return {};
  }
}
