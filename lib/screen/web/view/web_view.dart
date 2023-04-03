import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:ott/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class website extends StatefulWidget {
  const website({Key? key}) : super(key: key);

  @override
  State<website> createState() => _websiteState();
}

class _websiteState extends State<website> {
  Homeprovider? t;
  @override
  Widget build(BuildContext context) {
    t=Provider.of(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Web"),
        ),
        body:InAppWebView(initialUrlRequest: URLRequest(url: Uri.parse("${t!.url[t!.index]}")),),
      ),
    );
  }
}
