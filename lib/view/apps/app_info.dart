import 'package:flutter/material.dart';
import 'package:play_store/provider/play_provider.dart';
import 'package:provider/provider.dart';

class AppInfoScreen extends StatefulWidget {
  const AppInfoScreen({Key? key}) : super(key: key);

  @override
  State<AppInfoScreen> createState() => _AppInfoScreenState();
}

class _AppInfoScreenState extends State<AppInfoScreen> {
  PlayProvider? providerFalse;
  PlayProvider? providerTrue;
  @override
  Widget build(BuildContext context) {
    int index=ModalRoute.of(context)!.settings.arguments as int;
    providerTrue = Provider.of<PlayProvider>(context, listen: true);
    providerFalse = Provider.of<PlayProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Center(
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 20,
                  )),
            ),
            actions: [
              Icon(
                Icons.search,
                size: 20,
                color: Colors.black,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.more_vert,
                size: 20,
                color: Colors.black,
              ),
              SizedBox(width: 20)
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "${providerFalse!.appinfo[index].imagepath}",
                          height: 50,
                          width: 50,
                        )),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${providerFalse!.appinfo[index].name}",
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 1,
                                fontFamily: 'robo',
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        Text("${providerFalse!.appinfo[index].company}",
                            style: TextStyle(
                                color: Colors.green,
                                letterSpacing: 1,
                                fontFamily: 'robo',
                                fontSize: 13)),
                        Text("Contains ads | In-app purchases",
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
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "4.5",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'robo',
                              fontSize: 15,
                              letterSpacing: 1),
                        ),
                        Text(
                          "1M reviews",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'robo',
                              fontSize: 10,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 20,
                      width: 1,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Icon(
                          Icons.download_rounded,
                          size: 17,
                          color: Colors.black,
                        ),
                        Text(
                          "${providerFalse!.appinfo[index].size}",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'robo',
                              fontSize: 12,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 20,
                      width: 1,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Icon(
                          Icons.three_k_outlined,
                          size: 17,
                          color: Colors.black,
                        ),
                        Text(
                          "Rated for 3+",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'robo',
                              fontSize: 12,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 20,
                      width: 1,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Text(
                          "${providerFalse!.appinfo[index].download}",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'robo',
                              fontSize: 13,
                              letterSpacing: 1),
                        ),
                        Text(
                          "Download",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'robo',
                              fontSize: 10,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.green.shade900,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Install",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontFamily: 'robo',
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "${providerFalse!.appinfo[index].image![i]}",
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  itemCount: 5,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "About this game",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 15,
                          fontFamily: 'robo',
                          color: Colors.black),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: Text(
                    "${providerFalse!.appinfo[index].about}",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        fontFamily: 'robo',
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 35,
                  width: 210,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black)),
                  child: Center(
                    child: Text(
                      "#1 top grossing in app",
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontFamily: 'robo',
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Data safety",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 15,
                          fontFamily: 'robo',
                          color: Colors.black),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  child: Text(
                    "Safety starts with understanding how developers collect and share your data. "
                        "Data privacy and security practices may vary based on your use, region, and age. "
                        "The Developer provided this information and may update it over time.",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        fontFamily: 'robo',
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
