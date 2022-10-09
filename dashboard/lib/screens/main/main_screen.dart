import 'package:dashboard/controllers/menu_controller.dart';
import 'package:dashboard/responsive.dart';
import 'package:flutter/material.dart';
import '../dashbord/dashboard_screen.dart';
import 'components/side_menu.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, // header to top
          children: [
            // Side menu only for large screens
            if (Responsive.isDesktop(context))
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
