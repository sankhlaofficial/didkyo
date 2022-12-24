import 'dart:developer';

import 'package:didkyo/application/user_settings/user_settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class UserImageField extends StatelessWidget {
  String postImage = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<UserSettingsBloc, UserSettingsState>(
        listener: (context, state) {
      postImage = state.user.photoUrl!;
    }, builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          width: size.width,
          height: size.height / 4,
          child: postImage == ""
              ? Center(
                  child: IconButton(
                    icon: const Icon(Icons.add_box_rounded),
                    onPressed: () async {
                      ImagePicker picker = ImagePicker();
                      final XFile? image =
                          await picker.pickImage(source: ImageSource.gallery);
                      if (image != null) {
                        context
                            .bloc<UserSettingsBloc>()
                            .add(UserSettingsEvent.imageChanged(image.path));
                      }
                    },
                  ),
                )
              : Stack(
                  children: [
                    Positioned.fill(
                        child: Image.network(
                      postImage,
                    )),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () async {
                          ImagePicker picker = ImagePicker();
                          final XFile? image = await picker.pickImage(
                              source: ImageSource.gallery);
                          if (image != null) {
                            context.bloc<UserSettingsBloc>().add(
                                UserSettingsEvent.imageChanged(image.path));
                            log(state.user.photoUrl!);
                          }
                        },
                        icon: const Icon(
                          Icons.add_box_rounded,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
        ),
      );
    });
  }
}
