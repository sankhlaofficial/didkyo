import 'package:didkyo/injection.config.dart';
import 'package:didkyo/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'presentation/core/app_widget.dart';

void main() async {
  init(getIt);
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const AppWidget());
}
