import 'dart:developer';
import 'dart:io';

import 'package:didkyo/application/posts/post_form/post_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageField extends StatefulWidget {
  const ImageField({super.key});

  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  String postImage = '';

  String imageWay = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<PostFormBloc, PostFormState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {
          postImage = state.post.postImage.getOrCrash();
        },
        buildWhen: (p, c) => p.isEditing != c.isEditing,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              width: size.width,
              height: size.height / 4,
              child: postImage == ""
                  ? imageWay == ""
                      ? Center(
                          child: IconButton(
                          icon: const Icon(Icons.add_box_rounded),
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
                                context.bloc<PostFormBloc>().add(
                                    PostFormEvent.imageChanged(imageFile.path));
                              }
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
                                      context.bloc<PostFormBloc>().add(
                                          PostFormEvent.imageChanged(
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
                          postImage,
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
                                  context.bloc<PostFormBloc>().add(
                                      PostFormEvent.imageChanged(
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
