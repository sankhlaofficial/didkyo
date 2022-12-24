import 'package:didkyo/presentation/posts/user_posts/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.backButtonEnabled = true,
    required this.appBarTitle,
  }) : super(key: key);

  final String appBarTitle;
  bool backButtonEnabled;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarTitle,
        style: Theme.of(context).textTheme.displayMedium,
      ),
      leading: backButtonEnabled
          ? CustomContainer(
              containerColor: Colors.transparent,
              containerChild: IconButton(
                onPressed: () {
                  Get.back();
                  // context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
                },
                icon: const Icon(Icons.arrow_back),
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
