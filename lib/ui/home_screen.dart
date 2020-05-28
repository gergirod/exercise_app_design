import 'package:exercise_app/ui/details_screen.dart';
import 'package:exercise_app/ui/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bottom_nav_bar.dart';
import 'category_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEBB),
              image : DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png")
              )
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment : Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text("Good morning\nGerman ",
                  style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(fontWeight: FontWeight.w900)),
                  SearchBar(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GridView.count(crossAxisCount: 2,
                        childAspectRatio: .85,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(src: "assets/icons/Hamburger.svg",
                          title: "Diet Recommendation"),
                        CategoryCard(
                            src: "assets/icons/Meditation.svg",
                            title: "Meditation",
                            press: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return DetailsScreen();
                              }),
                              );
                            },),
                        CategoryCard(src: "assets/icons/Excrecises.svg",
                          title: "Kegel Exercise"),
                        CategoryCard(src: "assets/icons/yoga.svg",
                          title: "Yoga"),
                      ],),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}

