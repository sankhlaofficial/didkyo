import 'dart:developer';

import 'package:didkyo/application/user/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({
    Key? key,
  }) : super(key: key);

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
            return ElevatedButton(
                onPressed: () {
                  log(state.user.id!.getOrCrash());
                },
                child: const Text("Follow"));
          },
          loadFailure: (_) => const Center(
                child: Text('Some error'),
              ));
    });
  }
}
