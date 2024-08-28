import 'package:flutter/material.dart';
import '../utils/screen_utils.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/home_body.dart';
import '../widgets/responsive_builder.dart';
import '../widgets/responsive_text.dart';
import '../widgets/title_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: Scaffold(
        appBar: const TitleBar(
          showDrawerIcon: true,
          showRightButtons: false,
        ),
        drawer: const CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Added padding
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ResponsiveText(
                  text: 'FLUTTER WEB. \n THE BASICS',
                  mobileSize: 24,
                  tabletSize: 28,
                  desktopSize: 32,
                  isBold: true,
                ),
                const SizedBox(height: 16),
                const ResponsiveText(
                  text: 'A responsive text that adapts to the screen size.',
                  mobileSize: 14,
                  tabletSize: 16,
                  desktopSize: 18,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1BE28D),
                    foregroundColor: Colors.white,
                  ),
                  child: const ResponsiveText(
                    text: 'Lets Explore',
                    mobileSize: 16,
                    tabletSize: 18,
                    desktopSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      tablet: Scaffold(
        appBar: const TitleBar(
          showDrawerIcon: false,
          showRightButtons: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Added padding
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ResponsiveText(
                  text: 'FLUTTER WEB. \n THE BASICS',
                  mobileSize: 24,
                  tabletSize: 28,
                  desktopSize: 32,
                  isBold: true,
                ),
                const SizedBox(height: 16),
                const ResponsiveText(
                  text: 'A responsive text that adapts to the screen size.',
                  mobileSize: 14,
                  tabletSize: 16,
                  desktopSize: 18,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1BE28D),
                    foregroundColor: Colors.white,
                  ),
                  child: const ResponsiveText(
                    text: 'Lets Explore',
                    mobileSize: 16,
                    tabletSize: 18,
                    desktopSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      desktop: Scaffold(
        appBar: const TitleBar(
          showDrawerIcon: false,
          showRightButtons: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0), // Added padding
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ResponsiveText(
                        text: 'FLUTTER WEB. \n THE BASICS',
                        mobileSize: 24,
                        tabletSize: 28,
                        desktopSize: 32,
                        isBold: true,
                      ),
                      const SizedBox(height: 16),
                      const ResponsiveText(
                        text: 'A responsive text that adapts to the screen size.',
                        mobileSize: 14,
                        tabletSize: 16,
                        desktopSize: 18,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1BE28D),
                    foregroundColor: Colors.white,
                  ),
                  child: const ResponsiveText(
                    text: 'Lets Explore',
                    mobileSize: 16,
                    tabletSize: 18,
                    desktopSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}