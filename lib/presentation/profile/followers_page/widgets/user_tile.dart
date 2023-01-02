import 'package:cached_network_image/cached_network_image.dart';
import 'package:didkyo/application/profile/profile_bloc.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:didkyo/presentation/profile/global_profile_page.dart';
import 'package:didkyo/presentation/profile/widgets/image_full_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as nav;

class UserTile extends StatelessWidget {
  UserTile(
      {Key? key,
      this.location,
      required this.followId,
      required this.locationHeight,
      this.radius = 25,
      this.titleColor = Colors.transparent})
      : super(key: key);
  double radius;
  Color titleColor;
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
            return const CircularProgressIndicator(
              color: Colors.blue,
            );
          }
          if (state is ProfileLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              child: InkWell(
                onTap: () {
                  nav.Get.to(() => GlobalProfilePage(userId: followId),
                      transition: nav.Transition.rightToLeftWithFade);
                },
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        nav.Get.to(
                            () => ImageFullScreen(
                                  imageUrl: state.user.photoUrl!,
                                  userName: state.user.displayName!,
                                ),
                            transition: nav.Transition.rightToLeftWithFade);
                      },
                      child: CachedNetworkImage(
                        imageUrl: state.user.photoUrl!,
                        imageBuilder: (context, imageProvider) => CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: radius,
                            backgroundImage: imageProvider),
                        placeholder: (context, url) => CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: radius,
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
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
                            style: titleColor == Colors.transparent
                                ? Theme.of(context).textTheme.titleMedium!
                                : Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: titleColor),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        location != null
                            ? SizedBox(
                                width: 100,
                                height: locationHeight,
                                child: Text(
                                  location!,
                                  style: const TextStyle(
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
