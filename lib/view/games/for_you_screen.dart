import 'package:flutter/material.dart';
import 'package:play_store/provider/play_provider.dart';
import 'package:provider/provider.dart';

class ForYouScreen extends StatefulWidget {
  const ForYouScreen({Key? key}) : super(key: key);

  @override
  State<ForYouScreen> createState() => _ForYouScreenState();
}

class _ForYouScreenState extends State<ForYouScreen> {
  PlayProvider? providerFalse;
  PlayProvider? providerTrue;
  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<PlayProvider>(context, listen: true);
    providerFalse = Provider.of<PlayProvider>(context, listen: false);
    return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Casual Games",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontFamily: 'robo',
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                    height: 215,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => firstview(index),
                      itemCount: providerFalse!.gameinfo.length,
                    )),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Suggested for you",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontFamily: 'robo',
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                    height: 215,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => firstview(index),
                      itemCount: providerFalse!.gameinfo.length,
                    )),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Stylized games",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontFamily: 'robo',
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                    height: 215,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => firstview(index),
                      itemCount: providerFalse!.gameinfo.length,
                    )),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Top-rated games",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontFamily: 'robo',
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                    height: 215,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => firstview(index),
                      itemCount: providerFalse!.gameinfo.length,
                    )),
              ],
            ),
          ),
        ));
  }

  Widget firstview(int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'gameinfo',arguments: index);
      },
      child: Container(
        height: 210,
        width: 250,
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "${providerFalse!.gameinfo[index].firstimage}",
                  height: 150,
                  width: 245,
                )),
            SizedBox(height: 5),
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "${providerFalse!.gameinfo[index].imagepath}",
                      height: 50,
                      width: 50,
                    )),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${providerFalse!.gameinfo[index].name}",
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontFamily: 'robo',
                            fontSize: 16)),
                    Text("Action | Puzzle | Fight",
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontFamily: 'robo',
                            fontSize: 13)),
                    Text("4.2⭐ ${providerFalse!.gameinfo[index].size}",
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontFamily: 'robo',
                            fontSize: 13))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
