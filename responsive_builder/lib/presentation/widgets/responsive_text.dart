import 'package:flutter/material.dart';
import '../utils/screen_utils.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final double mobileSize;
  final double tabletSize;
  final double desktopSize;
  final bool isBold;

  const ResponsiveText({
    super.key,
    required this.text,
    required this.mobileSize,
    required this.tabletSize,
    required this.desktopSize,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final DeviceType deviceType = ScreenUtils.getDeviceType(size.width);
    double fontSize;

    if (deviceType == DeviceType.mobile) {
      fontSize = mobileSize;
    } else if (deviceType == DeviceType.tablet) {
      fontSize = tabletSize;
    } else {
      fontSize = desktopSize;
    }

    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
      textAlign: deviceType == DeviceType.desktop ? TextAlign.left : TextAlign.center,
    );
  }
}
