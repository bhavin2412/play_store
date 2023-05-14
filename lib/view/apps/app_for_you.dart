import 'package:flutter/material.dart';
import 'package:play_store/provider/play_provider.dart';
import 'package:provider/provider.dart';

class AppForYou extends StatefulWidget {
  const AppForYou({Key? key}) : super(key: key);

  @override
  State<AppForYou> createState() => _AppForYouState();
}

class _AppForYouState extends State<AppForYou> {
  PlayProvider? providerFalse;
  PlayProvider? providerTrue;
  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<PlayProvider>(context, listen: true);
    providerFalse = Provider.of<PlayProvider>(context, listen: false);
    return
      Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Based on your recent activity",
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
                      height: 195,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => firstview(index),
                        itemCount: providerFalse!.appinfo.length,
                      )),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Recommended for you",
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
                      height: 195,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => firstview(index),
                        itemCount: providerFalse!.appinfo.length,
                      )),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Entertainment",
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
                      height: 195,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => firstview(index),
                        itemCount: providerFalse!.appinfo.length,
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
                      height: 195,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => firstview(index),
                        itemCount: providerFalse!.appinfo.length,
                      )),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ));
  }
  Widget firstview(int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'appinfo',arguments: index);
      },
      child: Container(
        height: 195,
        width: 120,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "${providerFalse!.appinfo[index].imagepath}",
                  height: 120,
                  width: 120,
                )),
            SizedBox(height: 10),
            Text("${providerFalse!.appinfo[index].name}",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontFamily: 'robo',
                    fontSize: 16)),
            SizedBox(height: 5),
            Text("4.2⭐ ${providerFalse!.appinfo[index].size}",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontFamily: 'robo',
                    fontSize: 13)),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
