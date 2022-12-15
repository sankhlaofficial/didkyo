import 'package:another_flushbar/flushbar_helper.dart';
import 'package:didkyo/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                        cancelledByUser: (_) => 'Cancelled',
                        serverError: (_) => 'Server Error',
                        emailAlreadyInUse: (_) => 'Email Already In Use',
                        invalidEmailAndPasswordCombination: (_) =>
                            'Invalid Email and Password Combination'),
                  );
                }, (_) => {}));
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          // autovalidateMode: state.showErrorMessages
          //     ? AutovalidateMode.always
          //     : AutovalidateMode.disabled,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 38.0),
                child: Column(
                  children: [
                    const Text(
                      "Discover, Create and Share",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Get inside soon 😋",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    TextFormField(
                      autocorrect: false,
                      decoration: InputDecoration(hintText: "Enter Email"),
                      onChanged: (value) {
                        context
                            .bloc<SignInFormBloc>()
                            .add(SignInFormEvent.emailChanged(value));
                      },
                      validator: (_) => context
                          .bloc<SignInFormBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                              (f) => f.maybeMap(
                                  invalidEmail: (_) => 'Invalid Email',
                                  orElse: () => null),
                              (_) => null),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      autocorrect: false,
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Password"),
                      onChanged: (value) {
                        context
                            .bloc<SignInFormBloc>()
                            .add(SignInFormEvent.passwordChanged(value));
                      },
                      validator: (_) => context
                          .bloc<SignInFormBloc>()
                          .state
                          .password
                          .value
                          .fold(
                              (f) => f.maybeMap(
                                  shortPassword: (_) =>
                                      'Password should be at least 6 characters long',
                                  orElse: () => null),
                              (_) => null),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed());
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xff6ECCAF),
                          ),
                        ),
                        child: const Text("Sign In"),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .registerWithEmailAndPasswordPressed());
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xff6ECCAF),
                          ),
                        ),
                        child: const Text("Register"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: ElevatedButton(
                  onPressed: () {
                    context
                        .bloc<SignInFormBloc>()
                        .add(const SignInFormEvent.signInWithGooglePressed());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: Text("Sign in with Google"),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
