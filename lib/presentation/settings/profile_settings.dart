import 'package:didkyo/application/user_settings/user_settings_bloc.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/settings/widgets/name_field.dart';
import 'package:didkyo/presentation/settings/widgets/sign_out_button.dart';
import 'package:didkyo/presentation/settings/widgets/userImageField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileSettingsPage extends StatelessWidget {
  final User currentUser;
  const ProfileSettingsPage({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserSettingsBloc>()
        ..add(UserSettingsEvent.initialized(currentUser)),
      child: BlocBuilder<UserSettingsBloc, UserSettingsState>(
        condition: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(children: <Widget>[
            const UserSettingsPageScaffold(),
            SavingInProgressOverlay(
              isSaving: state.isSaving,
            )
          ]);
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({required this.isSaving});
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        color: isSaving ? Colors.black.withOpacity(0.5) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(
                color: Colors.blue,
              ),
              const SizedBox(
                height: 13,
              ),
              Text(
                'Saving',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserSettingsPageScaffold extends StatelessWidget {
  const UserSettingsPageScaffold();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                context
                    .bloc<UserSettingsBloc>()
                    .add(const UserSettingsEvent.saved());
              },
              icon: const Icon(Icons.check))
        ],
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: BlocBuilder<UserSettingsBloc, UserSettingsState>(
        condition: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  NameField(),
                  UserImageField(),
                  const SizedBox(
                    height: 120,
                  ),
                  const SignOutButton()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
