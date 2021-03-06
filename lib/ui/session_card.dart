import 'package:exercise_app/utils/constants.dart';
import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final Function press;
  const SessionCard({
    Key key,
    this.isDone = false,
    this.sessionNum,
    this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraint) {
          return Container(
            width: constraint.maxWidth / 2 - 10,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13)
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 42,
                        width: 43,
                        decoration: BoxDecoration(
                            color: isDone? kBlueColor : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: kBlueColor),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0,17),
                                  blurRadius: 23,
                                  spreadRadius: -13,
                                  color: kShadowColor
                              )
                            ]
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isDone ? Colors.white : kBlueColor,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "Session $sessionNum",
                        style: Theme.of(context).textTheme.subtitle,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}
