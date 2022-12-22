import 'package:didkyo/presentation/posts/user_posts/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.appBarTitle,
  }) : super(key: key);

  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarTitle,
        style: Theme.of(context).textTheme.headline6,
      ),
      leading: CustomContainer(
        containerColor: Colors.transparent,
        containerChild: IconButton(
          onPressed: () {
            Get.back();
            // context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
