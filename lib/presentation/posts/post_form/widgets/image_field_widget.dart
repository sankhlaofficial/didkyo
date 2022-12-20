import 'dart:developer';

import 'package:didkyo/application/posts/post_form/post_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImageField extends StatelessWidget {
  String postImage = '';
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
                  ? Center(
                      child: IconButton(
                        icon: const Icon(Icons.add_box_rounded),
                        onPressed: () async {
                          ImagePicker picker = ImagePicker();
                          final XFile? image = await picker.pickImage(
                              source: ImageSource.gallery);
                          if (image != null) {
                            context
                                .bloc<PostFormBloc>()
                                .add(PostFormEvent.imageChanged(image.path));
                          }
                        },
                      ),
                    )
                  : Stack(
                      children: [
                        Positioned.fill(
                          child: Image.network(
                            postImage,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () async {
                              ImagePicker picker = ImagePicker();
                              final XFile? image = await picker.pickImage(
                                  source: ImageSource.gallery);
                              if (image != null) {
                                context.bloc<PostFormBloc>().add(
                                    PostFormEvent.imageChanged(image.path));
                                log(state.post.postImage.getOrCrash());
                              }
                            },
                            icon: const Icon(
                              Icons.add_box_rounded,
                              color: Colors.white,
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
