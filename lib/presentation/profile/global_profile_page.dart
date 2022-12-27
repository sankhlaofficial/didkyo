import 'dart:developer';

import 'package:didkyo/application/profile/profile_bloc.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:didkyo/presentation/profile/profile_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalProfilePage extends StatelessWidget {
  final User user;
  const GlobalProfilePage({Key? key, required this.user}) : super(key: key);
  static const String sampleWallpaper =
      'https://img.freepik.com/premium-photo/watercolor-grunge-background-yellow-colors-vintage-poster-banner-scrapbook-page-handmade-aged-paper-texture-retro-style-can-be-used-cards-invitations-web_154156-5525.jpg';

  @override
  Widget build(BuildContext context) {
    log(user.following.toString());
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => ProfileBloc(
        context.repository<ActionsRepository>(),
      )..add(LoadProfile(userID: user.id!.getOrCrash())),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is ProfileLoading) {
            return CircularProgressIndicator(
              color: Colors.red,
            );
          }
          if (state is ProfileLoaded) {
            return ProfileBody(
                size: size, sampleWallpaper: sampleWallpaper, user: state.user);
          }
          return Center(
            child: Text("Something went wrong"),
          );
        },
      ),
    );
  }
}
