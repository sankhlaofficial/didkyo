import 'package:didkyo/application/auth/auth/auth_bloc.dart';
import 'package:didkyo/application/theme/theme_bloc.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

enum ThemeMode { Light, Dark }

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
        BlocProvider(create: (context) => ThemeBloc())
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, ThemeState state) {
          return GetMaterialApp(
            title: 'didKyo',
            debugShowCheckedModeBanner: false,
            theme: state.themeData,
            home: SplashPage(),
          );
        },
      ),
    );
  }
}
