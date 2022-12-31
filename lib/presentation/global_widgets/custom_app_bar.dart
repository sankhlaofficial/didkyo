import 'dart:developer';

import 'package:didkyo/application/theme/theme_bloc.dart';
import 'package:didkyo/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);

  const CustomAppBar({
    Key? key,
    required this.appBarTitle,
  }) : super(key: key);
  final String appBarTitle;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Theme.of(context).textTheme.titleSmall!.color,
      ),
      elevation: 0,
      title: Text(
        widget.appBarTitle,
        style: Theme.of(context).textTheme.displayMedium,
      ),
      actions: [
        BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return Row(
              children: [
                Icon(
                  isDarkModeEnabled ? Icons.nights_stay_rounded : Icons.sunny,
                  color: isDarkModeEnabled ? Colors.white : Colors.yellow,
                ),
                Switch(
                  value: state.themeData == AppTheme.lightTheme ? false : true,
                  onChanged: (value) {
                    BlocProvider.of<ThemeBloc>(context).add(ThemeEvent(
                        appTheme:
                            value ? AppTheme.darkTheme : AppTheme.lightTheme));
                    log(value.toString());
                    setState(() {
                      isDarkModeEnabled = value;
                    });
                  },
                ),
              ],
            );
          },
        )
      ],
    );
  }
}
