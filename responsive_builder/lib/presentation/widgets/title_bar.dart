import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showDrawerIcon;
  final bool showRightButtons;

  const TitleBar({
    super.key,
    required this.showDrawerIcon,
    required this.showRightButtons,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: showDrawerIcon,
      title: Text(
        'Flutter \n World',
        style: const TextStyle(
          color: Colors.black, // Text color set to black for all screens
        ),
        textAlign: showRightButtons ? TextAlign.left : TextAlign.center,
      ),
      centerTitle: !showRightButtons,
      backgroundColor: Colors.transparent, // Removed background color
      elevation: 0,
      actions: showRightButtons
          ? [
        TextButton(
          onPressed: () {},
          child: const Text('Schedule'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Message'),
        ),
      ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
