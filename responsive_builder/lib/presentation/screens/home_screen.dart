import 'package:flutter/material.dart';
import '../utils/text_styles.dart';
import '../widgets/app_bar_title.dart';
import '../widgets/drawer_content.dart';
import '../widgets/responsive_builder.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Flutter \nWorld'),
        backgroundColor: Colors.transparent,  // No background color
        centerTitle: false,
        actions: MediaQuery.of(context).size.width > 640
            ? [
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Center(
              child: Text(
                'Schedule   Message',
                style: TextStyle(color: Colors.black),  // Text color for buttons
              ),
            ),
          ),
        ]
            : null,
      ),
      drawer: MediaQuery.of(context).size.width <= 640
          ? const Drawer(
        child: SafeArea(
          child: DrawerContent(),
        ),
      )
          : null,  // No drawer for tablets and desktops
      body: ResponsiveBuilder(
        mobile: _buildMobileContent(context),
        tablet: _buildTabletContent(context),
        desktop: _buildDesktopContent(context),
      ),
    );
  }

  Widget _buildMobileContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('FLUTTER WEB. \n THE BASICS', style: TextStyles.getHeadline(context)),
        const SizedBox(height: 16),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam euismod turpis rhoncus felis rhoncus sollicitudin. Mauris quam turpis, faucibus in libero nec, tristique suscipit lorem. Sed et lacinia libero, at placerat nisi. Sed et lacinia libero, at placerat nisi.',
          style: TextStyles.getParagraph(context),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1BE28D),
          ),
          child: const Text(
            'Let\'s Explore',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _buildTabletContent(BuildContext context) {
    return _buildMobileContent(context);  // Same content as mobile
  }

  Widget _buildDesktopContent(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: _buildMobileContent(context),
        ),
        Expanded(
          flex: 5,
          child: Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1BE28D),
              ),
              child: const Text(
                'Let\'s Explore',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}