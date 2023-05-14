import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/play_provider.dart';

class TopChartScreen extends StatefulWidget {
  const TopChartScreen({Key? key}) : super(key: key);

  @override
  State<TopChartScreen> createState() => _TopChartScreenState();
}

class _TopChartScreenState extends State<TopChartScreen> {
  PlayProvider? providerFalse;
  PlayProvider? providerTrue;
  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<PlayProvider>(context, listen: true);
    providerFalse = Provider.of<PlayProvider>(context, listen: false);
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.green.shade100
                    ,borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Top Free",style: TextStyle(letterSpacing: 1,fontFamily: 'robo',color: Colors.green.shade900),),
                      Icon(Icons.arrow_drop_down,color: Colors.green.shade900,)
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(border: Border.all(color: Colors.black54)
                    ,borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Categories",style: TextStyle(letterSpacing: 1,fontFamily: 'robo',color: Colors.black),),
                      Icon(Icons.arrow_drop_down,color: Colors.black,)
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(border: Border.all(color: Colors.black54)
                    ,borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child:
                  Text("New",style: TextStyle(letterSpacing: 1,fontFamily: 'robo',color: Colors.black),),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 620,
            child: ListView.builder(itemBuilder: (context, index) => topchart(index),itemCount: providerFalse!.gameinfo.length),
          )
        ],
      ),
    ));
  }
  Widget topchart(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'gameinfo',arguments: index);
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              SizedBox(width: 10),
              Text("${index+1}",
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontFamily: 'robo',
                      fontSize: 16)),
              SizedBox(width: 15),
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "${providerFalse!.gameinfo[index].imagepath}",
                    height: 50,
                    width: 50,
                  )),
              SizedBox(width: 15),
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
          ),
        ),
      ),
    );

  }
}
