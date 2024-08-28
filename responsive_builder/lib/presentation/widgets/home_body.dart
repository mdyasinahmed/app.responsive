import 'package:flutter/material.dart';
import '../utils/screen_utils.dart';


class HomeBody extends StatelessWidget {
  final DeviceType deviceType;

  const HomeBody({super.key, required this.deviceType});

  @override
  Widget build(BuildContext context) {
    final content = Column(
      crossAxisAlignment: deviceType == DeviceType.desktop
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        const Text(
          'FLUTTER WEB. \nTHE BASICS',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Contrary to popular belief, Lorem Ipsum is not simply random text. It is copyright free generated text.',
          textAlign: TextAlign.center,
        ),
      ],
    );

    final button = ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1BE28D),
      ),
      child: const Text(
        'Let\'s Explore',
        style: TextStyle(color: Colors.white),
      ),
    );

    if (deviceType == DeviceType.desktop) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: content),
          Expanded(child: Center(child: button)),
        ],
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        content,
        const SizedBox(height: 16),
        button,
      ],
    );
  }
}
