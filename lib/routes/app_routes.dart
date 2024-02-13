import 'package:flutter/material.dart';
import 'package:streaming_amazing_flutter/routes/bottom_navigation.dart';
import 'package:streaming_amazing_flutter/utils/screens_bottom_bar.dart';

class AppRoutes extends StatefulWidget {
  const AppRoutes({super.key});

  @override
  State<AppRoutes> createState() => _AppRoutesState();
}

class _AppRoutesState extends State<AppRoutes> {
  var indexSelected = 0;

  handleTabSelected(int index) {
    setState(() {
      indexSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        screenBottomNavigation[indexSelected]['screen'] as Widget,
        BottomNavigation(
            indexBottomSelected: indexSelected, action: handleTabSelected)
      ]),
    );
  }
}
