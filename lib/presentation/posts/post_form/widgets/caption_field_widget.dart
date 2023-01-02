import 'package:didkyo/application/posts/post_form/post_form_bloc.dart';
import 'package:didkyo/domain/posts/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../global_widgets/shadow_container.dart';

class CaptionField extends HookWidget {
  const CaptionField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    Size size = MediaQuery.of(context).size;
    return BlocListener<PostFormBloc, PostFormState>(
      condition: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.post.postCaption.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ShadowContainer(
          color: Colors.black,
          child: Container(
            width: size.width,
            height: size.height / 7,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              cursorColor: Theme.of(context).textTheme.titleMedium!.color,
              controller: textEditingController,
              decoration: InputDecoration(
                counterText: '',
                contentPadding: const EdgeInsets.all(10),
                hintText: 'Enter the caption here',
                hintStyle: Theme.of(context).textTheme.titleMedium,
                border: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                constraints: BoxConstraints.expand(
                    width: size.width, height: size.height / 7),
              ),
              maxLength: PostCaption.maxLength,
              minLines: 5,
              maxLines: 10,
              onChanged: (value) {
                context
                    .bloc<PostFormBloc>()
                    .add(PostFormEvent.captionChanged(value));
              },
              validator: (_) => context
                  .bloc<PostFormBloc>()
                  .state
                  .post
                  .postCaption
                  .value
                  .fold(
                      (f) => f.maybeMap(
                          noStringPresent: (f) => "Cannot be empty",
                          exceedingLength: (f) =>
                              "Cannot exceed ${f.maxLengthAllowed}",
                          orElse: () => null),
                      (r) => null),
            ),
          ),
        ),
      ),
    );
  }
}
