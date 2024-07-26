import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, this.title, this.onClick, this.shop});
  final String? title;
  final IconData? shop;
  final Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? ""),
      backgroundColor: Colors.blue,
      actions: [
        IconButton(
          icon: Icon(shop),
          onPressed: onClick,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
