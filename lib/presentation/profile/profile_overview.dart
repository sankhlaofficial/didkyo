import 'package:didkyo/application/user/user_bloc.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/profile/profile_edit_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<UserBloc>()..add(const UserEvent.watchUserStarted()),
      child: const Scaffold(body: ProfileEditPage()),
    );
  }
}
