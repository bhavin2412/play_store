import 'package:flutter/material.dart';
import 'package:play_store/provider/play_provider.dart';
import 'package:provider/provider.dart';

class BookDashScreen extends StatefulWidget {
  const BookDashScreen({Key? key}) : super(key: key);

  @override
  State<BookDashScreen> createState() => _BookDashScreenState();
}

class _BookDashScreenState extends State<BookDashScreen> {
  PlayProvider? providerFalse;
  PlayProvider? providerTrue;
  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<PlayProvider>(context, listen: true);
    providerFalse = Provider.of<PlayProvider>(context, listen: false);
    return SafeArea(child: Scaffold(
      body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Biographies & memoirs",
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
                      height: 275,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => bookview(index),
                        itemCount: providerFalse!.appinfo.length,
                      )),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Astrophysics for People in a Hurry",
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
                      height: 275,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => bookview(index),
                        itemCount: providerFalse!.appinfo.length,
                      )),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "More like Titanic",
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
                      height: 275,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => bookview(index),
                        itemCount: providerFalse!.appinfo.length,
                      )),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Ebooks for you",
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
                      height: 275,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => bookview(index),
                        itemCount: providerFalse!.appinfo.length,
                      )),
                  SizedBox(height: 20),
                ],
              ),
            ),
          )),
    ));
  }
  Widget bookview(int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'bookinfo',arguments: index);
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
                  "${providerFalse!.book[index].imagepath}",
                  height: 200,
                  width: 120,
                )),
            SizedBox(height: 5),
            Text("${providerFalse!.book[index].name}",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontFamily: 'robo',
                    fontSize: 16)),
            SizedBox(height: 5),
            Text("4.2⭐ ₹${providerFalse!.book[index].rate}",
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
