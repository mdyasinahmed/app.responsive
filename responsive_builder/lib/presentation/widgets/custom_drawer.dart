import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              color: const Color(0xFF1BE28D),
              child: Column(
                children: const [
                  Text(
                    'Organisation Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'organisation info',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.schedule),
              title: Text('Schedule'),
            ),
            const ListTile(
              leading: Icon(Icons.message),
              title: Text('Message'),
            ),
          ],
        ),
      ),
    );
  }
}
