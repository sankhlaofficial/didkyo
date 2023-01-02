import 'package:didkyo/application/user_settings/user_settings_bloc.dart';
import 'package:didkyo/domain/posts/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BioField extends HookWidget {
  const BioField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    Size size = MediaQuery.of(context).size;
    return BlocListener<UserSettingsBloc, UserSettingsState>(
      listener: (context, state) {
        textEditingController.text = state.user.bio!;
        textEditingController.selection = TextSelection.fromPosition(
            TextPosition(offset: textEditingController.text.length));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Tell everyone about yourself',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.secondary),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadius.circular(12)),
              width: size.width,
              height: size.height / 7,
              child: TextFormField(
                controller: textEditingController,
                decoration: InputDecoration(
                  counterText: '',
                  contentPadding: const EdgeInsets.all(10),
                  hintText: 'Enter the bio here',
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
                      .bloc<UserSettingsBloc>()
                      .add(UserSettingsEvent.bioChanged(value));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
