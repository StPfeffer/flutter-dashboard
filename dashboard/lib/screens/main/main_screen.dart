import 'package:flutter/material.dart';
import '../dashbord/dashboard_screen.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, // header to top
          children: [
            Expanded(
              // default flex = 1
              // it takes 1/6 part of the screen
              child: SideMenu(),
            ),
            Expanded(
              // it takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
