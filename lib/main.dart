import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/home/provider/home_provider.dart';
import 'screen/home/view/home_Screen.dart';
import 'screen/web/view/web_view.dart';
void main()
{
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Homeprovider(),),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context) => home(),
            'web':(context) => website(),
          },
        ),
      )
  );
}