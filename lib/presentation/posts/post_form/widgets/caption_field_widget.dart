import 'package:didkyo/application/posts/post_form/post_form_bloc.dart';
import 'package:didkyo/domain/posts/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
        child: Container(
          width: size.width,
          height: size.height / 7,
          color: Colors.black12,
          child: TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(
              counterText: '',
              contentPadding: const EdgeInsets.all(10),
              hintText: 'Enter the caption here',
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
    );
  }
}
