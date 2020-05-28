import 'package:exercise_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final String src;
  final String title;
  final Function press;
  const CategoryCard({
    Key key,
    this.src,
    this.title,
    this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(19),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0,17),
                  blurRadius: 17,
                  spreadRadius: -22,
                  color: kShadowColor
              )
            ]

        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  SvgPicture.asset(src),
                  Spacer(),
                  Text(title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).
                      textTheme.
                      title.
                      copyWith(fontSize: 15))
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}