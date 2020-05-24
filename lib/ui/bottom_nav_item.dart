import 'package:exercise_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavItem extends StatelessWidget {
  final String src;
  final String title;
  final bool isActive;
  final Function press;
  const BottomNavItem({
    Key key,
    this.src,
    this.title,
    this.press,
    this.isActive = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            src,
            color: isActive? kActiveIconColor : kTextColor,),
          Text(
            title,
            style: TextStyle(
                color: isActive? kActiveIconColor : kTextColor
            ),
          )
        ],
      ),
    );
  }
}