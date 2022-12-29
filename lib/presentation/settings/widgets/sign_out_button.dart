import 'package:didkyo/application/auth/auth/auth_bloc.dart';
import 'package:didkyo/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            unauthenticated: (_) {
              Get.offAll(() => const SignInPage());
            },
            orElse: () {});
      },
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.red)),
        onPressed: () {
          context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
        },
        child: const Text('Sign Out'),
      ),
    );
  }
}
