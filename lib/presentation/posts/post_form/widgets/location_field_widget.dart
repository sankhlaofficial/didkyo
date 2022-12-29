import 'package:didkyo/application/posts/post_form/post_form_bloc.dart';
import 'package:didkyo/domain/posts/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LocationField extends HookWidget {
  const LocationField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    Size size = MediaQuery.of(context).size;
    return BlocListener<PostFormBloc, PostFormState>(
      condition: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.post.postLocation.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: size.width,
          height: size.height / 10,
          color: Colors.yellowAccent,
          child: TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(
              counterText: '',
              contentPadding: const EdgeInsets.all(10),
              hintText: 'Enter the location here',
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              constraints: BoxConstraints.expand(
                  width: size.width, height: size.height / 10),
            ),
            maxLength: PostLocation.maxLength,
            minLines: 5,
            maxLines: 10,
            onChanged: (value) {
              context
                  .bloc<PostFormBloc>()
                  .add(PostFormEvent.locationChanged(value));
            },
            validator: (_) => context
                .bloc<PostFormBloc>()
                .state
                .post
                .postLocation
                .value
                .fold(
                    (f) => f.maybeMap(
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
