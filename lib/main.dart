import 'package:didkyo/injection.config.dart';
import 'package:didkyo/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'presentation/core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  init(getIt);
  await Firebase.initializeApp();

  runApp(AppWidget());
}
