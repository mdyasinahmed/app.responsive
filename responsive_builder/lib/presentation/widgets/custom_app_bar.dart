import 'package:flutter/material.dart';
import '../utils/screen_utils.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final DeviceType deviceType;

  const CustomAppBar({super.key, required this.deviceType});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: deviceType == DeviceType.mobile
          ? Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.menu),
          Text(
            'Flutter \n.World',
            textAlign: TextAlign.right,
          ),
        ],
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Flutter \n World', textAlign: TextAlign.left),
          Row(
            children: [
              TextButton.icon(
                icon: const Icon(Icons.schedule),
                label: const Text('Schedule'),
                onPressed: () {},
              ),
              TextButton.icon(
                icon: const Icon(Icons.message),
                label: const Text('Message'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
      centerTitle: true,
      backgroundColor: Colors.pink,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
