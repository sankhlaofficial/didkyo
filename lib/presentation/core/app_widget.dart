import 'package:didkyo/application/auth/auth/auth_bloc.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/splash/splash_page.dart';
import 'package:didkyo/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()))
      ],
      child: GetMaterialApp(
        title: 'didKyo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: SplashPage(),
      ),
    );
  }
}
