import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:play_store/provider/play_provider.dart';
import 'package:provider/provider.dart';
import 'view/apps/app_info.dart';
import 'view/books/book_info.dart';
import 'view/dash_screen.dart';
import 'view/games/game_info.dart';
void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => PlayProvider(),)
    ],
    child: DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp  (
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context) => DashScreen(),
            'gameinfo':(context) => GameInfoScreen(),
            'appinfo':(context) => AppInfoScreen(),
            'bookinfo':(context) => BooksInfo(),
          },);
      },

    ),
  ));
}