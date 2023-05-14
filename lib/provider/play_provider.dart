import 'package:flutter/widgets.dart';
import '../model/play_model.dart';

class PlayProvider extends ChangeNotifier {
  int bottom = 3;

  void chnagebottomlabeles(int value) {
    bottom = value;
    notifyListeners();
  }

  List<PlayModel> gameinfo = [
    PlayModel(
        name: "Angry Birds Friends",
        company: "Rovio Enterainment",
        size: "87 MB",
        download: "100M+",
        about: "Compete against the World in Special tournaments every week!",
        imagepath: "assets/images/games/A_birds/1.jpg",
        firstimage: "assets/images/games/A_birds/2.jpg",
        image: [
          'assets/images/games/A_birds/2.jpg',
          'assets/images/games/A_birds/3.jpg',
          'assets/images/games/A_birds/4.jpg',
          'assets/images/games/A_birds/5.jpg',
          'assets/images/games/A_birds/6.jpg',
        ]),
    PlayModel(
        name: "Clash of Clans",
        company: "Supercell",
        size: "290 MB",
        download: "500M+",
        about: "Epic combat strategy game.",
        imagepath: "assets/images/games/coc/1.jpg",
        firstimage: "assets/images/games/coc/2.jpg",
        image: [
          'assets/images/games/coc/2.jpg',
          'assets/images/games/coc/3.jpg',
          'assets/images/games/coc/4.jpg',
          'assets/images/games/coc/5.jpg',
          'assets/images/games/coc/6.jpg',
        ]),
    PlayModel(
        name: "Call of Duty Mobile",
        company: "Activision Publishing",
        size: "2.2 GB",
        download: "100M+",
        about:
        "PVR, BR, Shooter< Shooting, Zombies, Multiplayer, Teams, Fun, FPS, Gunsmith, BP",
        imagepath: "assets/images/games/cod/1.jpg",
        firstimage: "assets/images/games/cod/2.jpg",
        image: [
          'assets/images/games/cod/2.jpg',
          'assets/images/games/cod/3.jpg',
          'assets/images/games/cod/4.jpg',
          'assets/images/games/cod/5.jpg',
          'assets/images/games/cod/6.jpg',
        ]),
    PlayModel(
        name: "Cricket League",
        company: "Miniclip.com",
        size: "67 MB",
        download: "10M+",
        about:
        "Blazing fast 1v1 cricket game with 2 overs of bowling batting & tons tactics",
        imagepath: "assets/images/games/cricket/1.jpg",
        firstimage: "assets/images/games/cricket/2.jpg",
        image: [
          'assets/images/games/cricket/2.jpg',
          'assets/images/games/cricket/3.jpg',
          'assets/images/games/cricket/4.jpg',
          'assets/images/games/cricket/5.jpg',
          'assets/images/games/cricket/6.jpg',
        ]),
    PlayModel(
        name: "Farm City: Farming",
        company: "Zego Studio",
        size: "116 MB",
        download: "5M+",
        about: "Do farming & build your dream city",
        imagepath: "assets/images/games/farm_city/1.jpg",
        firstimage: "assets/images/games/farm_city/2.jpg",
        image: [
          'assets/images/games/farm_city/2.jpg',
          'assets/images/games/farm_city/3.jpg',
          'assets/images/games/farm_city/4.jpg',
          'assets/images/games/farm_city/5.jpg',
          'assets/images/games/farm_city/6.jpg',
        ]),
    PlayModel(
        name: "Fishdom",
        company: "Playrix",
        size: "127 MB",
        download: "10M+",
        about: "Swap and match to create lovely homes for adorable fish!",
        imagepath: "assets/images/games/fishdome/1.jpg",
        firstimage: "assets/images/games/fishdome/2.jpg",
        image: [
          'assets/images/games/fishdome/2.jpg',
          'assets/images/games/fishdome/3.jpg',
          'assets/images/games/fishdome/4.jpg',
          'assets/images/games/fishdome/5.jpg',
          'assets/images/games/fishdome/6.jpg',
        ]),
    PlayModel(
        name: "Modern Strike Online",
        company: "Azur Interactive Games",
        size: "2.2 GB",
        download: "100M+",
        about: "Online FPS shooting game with action Pvp combat",
        imagepath: "assets/images/games/pvp/1.jpg",
        firstimage: "assets/images/games/pvp/2.jpg",
        image: [
          'assets/images/games/pvp/2.jpg',
          'assets/images/games/pvp/3.jpg',
          'assets/images/games/pvp/4.jpg',
          'assets/images/games/pvp/5.jpg',
          'assets/images/games/pvp/6.jpg',
        ]),
    PlayModel(
        name: "Shadow Fight 2",
        company: "Nekki",
        size: "154 MB",
        download: "50M+",
        about: "Prepare to fight shadow!",
        imagepath: "assets/images/games/shadow/1.jpg",
        firstimage: "assets/images/games/shadow/2.jpg",
        image: [
          'assets/images/games/shadow/2.jpg',
          'assets/images/games/shadow/3.jpg',
          'assets/images/games/shadow/4.jpg',
          'assets/images/games/shadow/5.jpg',
          'assets/images/games/shadow/6.jpg',
        ]),
    PlayModel(
        name: "SimCity Buildlt",
        company: "Electronic Arts",
        size: "149 MB",
        download: "10M+",
        about:
        "Build and manage your very own city, and watch it come to life.",
        imagepath: "assets/images/games/simcity/1.jpg",
        firstimage: "assets/images/games/simcity/2.jpg",
        image: [
          'assets/images/games/simcity/2.jpg',
          'assets/images/games/simcity/3.jpg',
          'assets/images/games/simcity/4.jpg',
          'assets/images/games/simcity/5.jpg',
          'assets/images/games/simcity/6.jpg',
        ]),
    PlayModel(
        name: "Township",
        company: "Playrix",
        size: "124 MB",
        download: "100M+",
        about: "Township: a great game for the whole family!",
        imagepath: "assets/images/games/township/1.jpg",
        firstimage: "assets/images/games/township/2.jpg",
        image: [
          'assets/images/games/township/2.jpg',
          'assets/images/games/township/3.jpg',
          'assets/images/games/township/4.jpg',
          'assets/images/games/township/5.jpg',
          'assets/images/games/township/6.jpg',
        ]),
    PlayModel(
        name: "World War Heroes",
        company: "Azur Interactive Games",
        size: "2.2 GB",
        download: "100M+",
        about:
        "Legendary multiplayer shooter with players around the world in the WW2 setting!",
        imagepath: "assets/images/games/ww2/1.jpg",
        firstimage: "assets/images/games/ww2/2.jpg",
        image: [
          'assets/images/games/ww2/2.jpg',
          'assets/images/games/ww2/3.jpg',
          'assets/images/games/ww2/4.jpg',
          'assets/images/games/ww2/5.jpg',
          'assets/images/games/ww2/6.jpg',
        ]),
    PlayModel(
        name: "Zombie Catchers",
        company: "Deca Games",
        size: "88 MB",
        download: "100M+",
        about:
        "Time to hunt, shoot down zombies & sell dishes to expand your alien business.",
        imagepath: "assets/images/games/zombie/1.jpg",
        firstimage: "assets/images/games/zombie/2.jpg",
        image: [
          'assets/images/games/zombie/2.jpg',
          'assets/images/games/zombie/3.jpg',
          'assets/images/games/zombie/4.jpg',
          'assets/images/games/zombie/5.jpg',
          'assets/images/games/zombie/6.jpg',
        ]),
  ];
  List<PlayModel> appinfo = [
    PlayModel(
        name: "Truecaller: Caller ID",
        company: "Truecaller",
        size: "20 MB",
        download: "1B+",
        about: "Know whos calling before answering: caller ID, spam protection & call blocking",
        imagepath: "assets/images/app/call/1.jpg",
        image: [
          'assets/images/app/call/2.jpg',
          'assets/images/app/call/3.jpg',
          'assets/images/app/call/4.jpg',
          'assets/images/app/call/5.jpg',
          'assets/images/app/call/6.jpg',
        ]),
    PlayModel(
        name: "Facebook",
        company: "Meta Platforms, Inc.",
        size: "70 MB",
        download: "5B+",
        about: "Find Frinds, watch live video, play games & save photos in your social network",
        imagepath: "assets/images/app/fb/1.jpg",
        image: [
          'assets/images/app/fb/2.jpg',
          'assets/images/app/fb/3.jpg',
          'assets/images/app/fb/4.jpg',
          'assets/images/app/fb/5.jpg',
          'assets/images/app/fb/6.jpg',
        ]),
    PlayModel(
        name: "Google Home",
        company: "Google LLC",
        size: "21 MB",
        download: "100M+",
        about: "Set up and control your compatible Nest, Chromecast, and Google Home devices",
        imagepath: "assets/images/app/google/1.jpg",
        image: [
          'assets/images/app/google/2.jpg',
          'assets/images/app/google/3.jpg',
          'assets/images/app/google/4.jpg',
          'assets/images/app/google/5.jpg',
          'assets/images/app/google/6.jpg',
        ]),
    PlayModel(
        name: "Google Pay",
        company: "Google LLC",
        size: "30 MB",
        download: "500M+",
        about: "Make UPI payments, recharges, pay biles & businesses with Google pay(Tez)",
        imagepath: "assets/images/app/gpay/1.jpg",
        image: [
          'assets/images/app/gpay/2.jpg',
          'assets/images/app/gpay/3.jpg',
          'assets/images/app/gpay/4.jpg',
          'assets/images/app/gpay/5.jpg',
          'assets/images/app/gpay/6.jpg',
        ]),
    PlayModel(
        name: "Hotstar",
        company: "Novi Digital",
        size: "50 MB",
        download: "500M+",
        about: "Watch the latest Live Sports, TV and Movies in multiple lanuguage",
        imagepath: "assets/images/app/hotstar/1.jpg",
        image: [
          'assets/images/app/hotstar/2.jpg',
          'assets/images/app/hotstar/3.jpg',
          'assets/images/app/hotstar/4.jpg',
          'assets/images/app/hotstar/5.jpg',
          'assets/images/app/hotstar/6.jpg',
        ]),
    PlayModel(
        name: "Microsoft Edge",
        company: "Microsoft Corporation",
        size: "96 MB",
        download: "50M+",
        about: "Browse the web smarter, not harder. Protect your data and save time and money.",
        imagepath: "assets/images/app/medge/1.jpg",
        image: [
          'assets/images/app/medge/2.jpg',
          'assets/images/app/medge/3.jpg',
          'assets/images/app/medge/4.jpg',
          'assets/images/app/medge/5.jpg',
          'assets/images/app/medge/6.jpg',
        ]),
    PlayModel(
        name: "Microsoft Lens",
        company: "Microsoft Corporation",
        size: "55 MB",
        download: "10M+",
        about: "Pocket PDF scanner with integrated OCR",
        imagepath: "assets/images/app/mlens/1.jpg",
        image: [
          'assets/images/app/mlens/2.jpg',
          'assets/images/app/mlens/3.jpg',
          'assets/images/app/mlens/4.jpg',
          'assets/images/app/mlens/5.jpg',
          'assets/images/app/mlens/6.jpg',
        ]),
    PlayModel(
        name: "Netflix",
        company: "Netflix, Inc.",
        size: "23 MB",
        download: "1B+",
        about: "Netflix is the leading subscription service for watching TV edpisode and movie",
        imagepath: "assets/images/app/netflix/1.jpg",
        image: [
          'assets/images/app/netflix/2.jpg',
          'assets/images/app/netflix/3.jpg',
          'assets/images/app/netflix/4.jpg',
          'assets/images/app/netflix/5.jpg',
          'assets/images/app/netflix/6.jpg',
        ]),
    PlayModel(
        name: "Snapchat",
        company: "Snap Inc",
        size: "58 MB",
        download: "1B+",
        about: "Share the moment!",
        imagepath: "assets/images/app/snapchat/1.jpg",
        image: [
          'assets/images/app/snapchat/2.jpg',
          'assets/images/app/snapchat/3.jpg',
          'assets/images/app/snapchat/4.jpg',
          'assets/images/app/snapchat/5.jpg',
          'assets/images/app/snapchat/6.jpg',
        ]),
    PlayModel(
        name: "Spotify: Music and Podcasts",
        company: "Spotify AB",
        size: "25 MB",
        download: "1B+",
        about: "Listen to songs, play podcasts, create playlist and discover music youll love",
        imagepath: "assets/images/app/spoti/1.jpg",
        image: [
          'assets/images/app/spoti/2.jpg',
          'assets/images/app/spoti/3.jpg',
          'assets/images/app/spoti/4.jpg',
          'assets/images/app/spoti/5.jpg',
          'assets/images/app/spoti/6.jpg',
        ]),
    PlayModel(
        name: "Whatsapp Messenger",
        company: "Whatsapp LLC",
        size: "30 MB",
        download: "5B+",
        about: "Simple, Reliable, Private",
        imagepath: "assets/images/app/whatsapp/1.jpg",
        image: [
          'assets/images/app/whatsapp/2.jpg',
          'assets/images/app/whatsapp/3.jpg',
          'assets/images/app/whatsapp/4.jpg',
          'assets/images/app/whatsapp/5.jpg',
          'assets/images/app/whatsapp/6.jpg',
        ]),
  ];
  List<PlayModel> offerinfo = [
    PlayModel(
      firstimage: "assets/images/offers/1.jpg",
      imagepath: "assets/images/offers/3.jpg",
      name: "IMVU: Social Chate & Avatar App",
      company: "Social",
    ),
    PlayModel(
      firstimage: "assets/images/offers/2.jpg",
      imagepath: "assets/images/offers/4.jpg",
      name: "Megapolis: City Building Sim",
      company: "Simulation | City-Building",
    )
  ];
  List<PlayModel>book = [
    PlayModel(
        imagepath: "assets/images/books/1.jpg",
        name: "Titanic",
        rate: 105,
        page: 215
    ),
    PlayModel(
        imagepath: "assets/images/books/2.jpg",
        name: "The of Paranormal",
        rate: 261,
        page: 144
    ),
    PlayModel(
        imagepath: "assets/images/books/3.jpg",
        name: "The Age of Gladiators",
        rate: 105,
        page: 255
    ),
    PlayModel(
        imagepath: "assets/images/books/4.jpg",
        name: "The Little Book of Surrey",
        rate: 261,
        page: 144
    ),
    PlayModel(
        imagepath: "assets/images/books/5.jpg",
        name: "Death by Black Hole",
        rate: 1549,
        page: 384
    ),
    PlayModel(
        imagepath: "assets/images/books/6.jpg",
        name: "The Science of Interstellar",
        rate: 2423,
        page: 336
    ),
    PlayModel(
        imagepath: "assets/images/books/7.jpg",
        name: "Human Universe",
        rate: 293,
        page: 272
    ),
    PlayModel(
        imagepath: "assets/images/books/8.jpg",
        name: "Accessory to War",
        rate: 1840,
        page: 592
    ),
    PlayModel(
        imagepath: "assets/images/books/9.jpg",
        name: "The Haunted House",
        rate: 1,
        page: 23
    ),
    PlayModel(
        imagepath: "assets/images/books/10.jpg",
        name: "Lacuna",
        rate: 1,
        page: 173
    ),
    PlayModel(
        imagepath: "assets/images/books/11.jpg",
        name: "Breakers",
        rate: 1,
        page: 299
    ),
    PlayModel(
        imagepath: "assets/images/books/12.jpg",
        name: "The Story Fomr The Futuar",
        rate: 101,
        page: 45
    ),
  ];
}
