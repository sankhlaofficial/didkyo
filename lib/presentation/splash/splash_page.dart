import 'package:didkyo/application/auth/auth/auth_bloc.dart';
import 'package:didkyo/presentation/posts/global_posts/global_posts_page.dart';
import 'package:didkyo/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) {
              Get.offAll(() => GlobalPostsPage());
            },
            unauthenticated: (_) {
              Get.offAll(() => SignInPage());
            });
      },
      child: Scaffold(
        body: Center(
          child: Text(
            "did-Kyo",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor),
          ),
        ),
      ),
    );
  }
}
