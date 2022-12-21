import 'package:didkyo/application/user/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({Key? key}) : super(key: key);

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
            return Center(
              child: Text(state.user.id!.getOrCrash()),
            );
          },
          loadFailure: (_) => const Center(
                child: Text('Some error'),
              ));
    });
  }
}
