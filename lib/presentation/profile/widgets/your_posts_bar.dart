import 'package:didkyo/presentation/global_widgets/shadow_container.dart';
import 'package:flutter/material.dart';

class YourPostsBar extends StatelessWidget {
  const YourPostsBar({
    Key? key,
    required this.size,
    required this.title,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final String title;
  final Color color;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ShadowContainer(
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.all(3),
          width: size.width / 3,
          height: size.height / 5,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black, width: 2)),
          child: Center(
              child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
          )),
        ),
      ),
    );
  }
}
