import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: ListView(
            children: [
              cate("Action"),
              cate("Advanture"),
              cate("Arcade"),
              cate("Board"),
              cate("Card"),
              cate("Casino"),
              cate("Casual"),
              cate("Education"),
              cate("Music"),
              cate("Puzzle"),
              cate("Racing"),
              cate("Role Playing"),
              cate("Simulation"),
              cate("Sports"),
              cate("Stategy"),
              cate("Trivia"),
              cate("Word"),
            ],
          )
      ),
    ),
    );
  }
  Widget cate(String name) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 40,
      width: double.infinity,
      child: Text(
        "$name",style: TextStyle(letterSpacing: 1,fontSize: 20,color: Colors.black87,fontFamily: 'robo'),
      ),
    );
  }
}
