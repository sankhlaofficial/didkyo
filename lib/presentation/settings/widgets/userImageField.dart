import 'dart:developer';
import 'dart:io';

import 'package:didkyo/application/user_settings/user_settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class UserImageField extends StatefulWidget {
  const UserImageField({super.key});

  @override
  State<UserImageField> createState() => _UserImageFieldState();
}

class _UserImageFieldState extends State<UserImageField> {
  static const String loadingImage =
      'https://cdn3.vectorstock.com/i/1000x1000/98/47/loading-icon-on-black-vector-24559847.jpg';
  String postImage = '';
  String localImage = '';

  String imageWay = '';

  @override
  Widget build(BuildContext context) {
    log('post image is $postImage');
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
          child: localImage != ''
              ? imageWay == ""
                  ? Center(
                      child: IconButton(
                      icon: const Icon(Icons.add_box_rounded),
                      onPressed: () async {
                        ImagePicker picker = ImagePicker();
                        final XFile? image =
                            await picker.pickImage(source: ImageSource.gallery);
                        if (image != null) {
                          setState(() {
                            imageWay = image.path;
                          });

                          context
                              .bloc<UserSettingsBloc>()
                              .add(UserSettingsEvent.imageChanged(image.path));
                        }
                      },
                    ))
                  : Stack(
                      children: [
                        Positioned.fill(
                            child: Image.file(
                          File(imageWay),
                          fit: BoxFit.cover,
                        )),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () async {
                              ImagePicker picker = ImagePicker();
                              ImageCropper cropper = ImageCropper();
                              final XFile? image = await picker.pickImage(
                                  source: ImageSource.gallery);
                              if (image != null) {
                                final imageFile = await cropper.cropImage(
                                  sourcePath: image.path,
                                  aspectRatio: const CropAspectRatio(
                                      ratioX: 1.0, ratioY: 1.0),
                                );
                                if (imageFile != null) {
                                  log(imageFile.path);
                                  setState(() {
                                    log(image.path);
                                    imageWay = imageFile.path;
                                  });
                                  context.bloc<UserSettingsBloc>().add(
                                      UserSettingsEvent.imageChanged(
                                          imageFile.path));
                                }
                              }
                            },
                            icon: const Icon(
                              Icons.add_box_rounded,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    )
              : Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        postImage != "" ? postImage : loadingImage,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () async {
                          ImagePicker picker = ImagePicker();
                          ImageCropper cropper = ImageCropper();
                          final XFile? image = await picker.pickImage(
                              source: ImageSource.gallery);
                          if (image != null) {
                            final imageFile = await cropper.cropImage(
                              sourcePath: image.path,
                              aspectRatio: const CropAspectRatio(
                                  ratioX: 1.0, ratioY: 1.0),
                            );
                            if (imageFile != null) {
                              setState(() {
                                imageWay = imageFile.path;
                                localImage = 'NOT NULL ';
                              });
                              context.bloc<UserSettingsBloc>().add(
                                  UserSettingsEvent.imageChanged(
                                      imageFile.path));
                            }
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
