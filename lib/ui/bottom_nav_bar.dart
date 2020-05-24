import 'package:flutter/material.dart';

import 'bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      color: Colors.white,
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(title: "Today", src: "assets/icons/calendar.svg"),
          BottomNavItem(title: "Exercise", src: "assets/icons/gym.svg", isActive: true,),
          BottomNavItem(title: "Settings", src: "assets/icons/Settings.svg")
        ],
      ),
    );
  }
}