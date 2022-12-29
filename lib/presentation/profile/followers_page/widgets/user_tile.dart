import 'package:didkyo/application/profile/profile_bloc.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:didkyo/presentation/profile/global_profile_page.dart';
import 'package:didkyo/presentation/profile/widgets/image_full_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class UserTile extends StatelessWidget {
  UserTile({
    Key? key,
    this.location,
    required this.followId,
    required this.locationHeight,
  }) : super(key: key);

  final String followId;
  String? location;
  final double locationHeight;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(
        context.repository<ActionsRepository>(),
      )..add(LoadProfile(userID: followId)),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is ProfileLoading) {
            return CircularProgressIndicator(
              color: Colors.blue,
            );
          }
          if (state is ProfileLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              child: InkWell(
                onTap: () {
                  Get.to(() => GlobalProfilePage(userId: followId));
                },
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => ImageFullScreen(
                              imageUrl: state.user.photoUrl!,
                              userName: state.user.displayName!,
                            ));
                      },
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 25,
                          backgroundImage: NetworkImage(
                            state.user.photoUrl!,
                          )),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 130,
                          height: 20,
                          child: Text(
                            state.user.displayName!,
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        location != null
                            ? SizedBox(
                                width: 100,
                                height: locationHeight,
                                child: Text(
                                  location!,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ),
                              )
                            : Container(),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
          return const Center(
            child: Text("Something went wrong"),
          );
        },
      ),
    );
  }
}
