import 'package:flutter/material.dart';

class AppCate extends StatefulWidget {
  const AppCate({Key? key}) : super(key: key);

  @override
  State<AppCate> createState() => _AppCateState();
}

class _AppCateState extends State<AppCate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: ListView(
            children: [
              cate("Watch apps"),
              cate("Watch faces"),
              cate("Art & Design"),
              cate("Auto & Vehicles"),
              cate("Beauty"),
              cate("Books"),
              cate("Reference"),
              cate("Business"),
              cate("Comics"),
              cate("Communication"),
              cate("Dating"),
              cate("Education"),
              cate("Entertaiment"),
              cate("Events"),
              cate("Finance"),
              cate("Food & Drink"),
              cate("Games"),
              cate("Google Cast"),
              cate("Health & Fitness"),
              cate("House & Home"),
              cate("Tools"),
              cate("Travel & Local"),
              cate("Video Player & Editors"),
              cate("Weather"),
            ],
          )
      ),
    ));
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
