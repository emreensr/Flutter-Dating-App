import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool hasActions;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.hasActions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            child: SvgPicture.asset(
              'assets/logo.svg',
              height: 50,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
          )
        ],
      ),
      actions:
        hasActions ?
        [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.message,
            color: Theme.of(context).primaryColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.person,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ] : null,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}