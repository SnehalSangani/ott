import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';


class Homeprovider extends ChangeNotifier
{
  InAppWebViewController? inAppWebViewController;
  int index=0;
  List images=[
    "assets/images/amazon1.jpg",
    "assets/images/disney.jpg",
    "assets/images/voot.png",
    "assets/images/zee5.png",
    "assets/images/jio.jpg",
    "assets/images/sun.jpg",
    "assets/images/netflix.png",
    "assets/images/sony.jpg",
  ];
  List url=[
    "https://www.amazon.in/",
    "https://www.hotstar.com/in",
    "https://www.voot.com/",
    "https://www.zee5.com/",
    "https://www.jiocinema.com/",
    "https://www.sunnxt.com/",
    "https://www.netflix.com/in/",
    "https://www.sonyliv.com/",

  ];
  List name=[
    "Amazon",
    "Disney +",
    "Voot",
    "Zee5",
    "Jio cinema",
    "Sun nxt",
    "Netflix",
    "Sony",


  ];
  void onchanged(int i)
  {
    index=i;
    notifyListeners();
  }
}