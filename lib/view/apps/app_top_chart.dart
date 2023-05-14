import 'package:flutter/material.dart';
import 'package:play_store/provider/play_provider.dart';
import 'package:provider/provider.dart';

class AppTopChart extends StatefulWidget {
  const AppTopChart({Key? key}) : super(key: key);

  @override
  State<AppTopChart> createState() => _AppTopChartState();
}

class _AppTopChartState extends State<AppTopChart> {
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
            ],
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 620,
            child: ListView.builder(itemBuilder: (context, index) => apptopchart(index),itemCount: providerFalse!.appinfo.length),
          )
        ],
      ),
    ));
  }
  Widget apptopchart(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'appinfo',arguments: index);
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
                    "${providerFalse!.appinfo[index].imagepath}",
                    height: 50,
                    width: 50,
                  )),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${providerFalse!.appinfo[index].name}",
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontFamily: 'robo',
                          fontSize: 16)),
                  Text("${providerFalse!.appinfo[index].company}",
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontFamily: 'robo',
                          fontSize: 13)),
                  Text("4.2⭐ ${providerFalse!.appinfo[index].size}",
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
