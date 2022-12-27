import 'package:didkyo/application/user/user_bloc.dart';
import 'package:didkyo/presentation/settings/profile_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListener extends StatelessWidget {
  const UserListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
          loadSuccess: (state) {
            return ProfileSettingsPage(currentUser: state.user);
          },
          loadFailure: (_) => const Center(
                child: Text('Some error'),
              ));
    });
  }
}
