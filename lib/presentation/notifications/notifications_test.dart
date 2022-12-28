import 'package:didkyo/infrastructure/notifications/notificiations_repository.dart';
import 'package:flutter/material.dart';

class TestNotifications extends StatelessWidget {
  const TestNotifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NotificationsRepository.getFCMToken();

    return Container(
      child: const Center(
        child: Text("Test notifications"),
      ),
    );
  }
}
