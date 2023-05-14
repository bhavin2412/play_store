import 'package:flutter/material.dart';
import 'package:play_store/provider/play_provider.dart';
import 'package:provider/provider.dart';
import 'apps/apps_dash_screen.dart';
import 'books/book_dash_screen.dart';
import 'games/game_dash_screen.dart';
import 'offers/offer_dash_screen.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  PlayProvider? providerFasle;
  PlayProvider? providerTrue;

  @override
  Widget build(BuildContext context) {
    providerFasle = Provider.of<PlayProvider>(context, listen: false);
    providerTrue = Provider.of<PlayProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Row(
              children: [
                Container(
                  height: 40,
                  width: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade100),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.search,
                        color: Colors.black54,
                        size: 20,
                      ),
                      Spacer(),
                      Text(
                        'Search apps & games',
                        style: TextStyle(
                            fontFamily: 'robo',
                            color: Colors.black54,
                            fontSize: 15,
                            letterSpacing: 1),
                      ),
                      Spacer(),
                      Icon(
                        Icons.mic,
                        color: Colors.black54,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
            actions: [
              Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 25,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.person,
                color: Colors.black,
                size: 25,
              ),
              SizedBox(width: 20),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(letterSpacing: 1, fontFamily: 'robo'),
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black54,
            currentIndex: providerTrue!.bottom,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.sports_esports), label: "Games"),
              BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps"),
              BottomNavigationBarItem(icon: Icon(Icons.sell), label: "Offers"),
              BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: "Books"),
            ],
            onTap: (value) {
              providerFasle!.chnagebottomlabeles(value);
            },
          ),
          body: providerFasle!.bottom == 0
              ? GameDashScreen()
              : providerFasle!.bottom == 1
              ? AppsDashScreen()
              : providerFasle!.bottom == 2
              ? OfferDashScreen()
              : BookDashScreen(),
        ));
  }
}
