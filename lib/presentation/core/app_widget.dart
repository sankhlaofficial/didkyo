import 'package:flutter/material.dart';
import '../sign_in/sign_in_page.dart';
class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'didKyo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SignInPage(),
    );
  }
}

