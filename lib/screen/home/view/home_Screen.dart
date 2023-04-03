

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Homeprovider? homeprovidertrue;
  Homeprovider? homeproviderfalse;

  @override
  Widget build(BuildContext context) {
    homeproviderfalse = Provider.of<Homeprovider>(context, listen: false);
    homeprovidertrue = Provider.of<Homeprovider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("OTT Platform"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: GridView.builder(
          itemCount: homeproviderfalse!.images.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                homeproviderfalse!.onchanged(index);
                Navigator.pushNamed(context, 'web');
              },
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey,width: 2),
                          color: Colors.white,

                        ),
                        child: Image.asset(
                          "${homeproviderfalse!.images[index]}",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("${homeproviderfalse!.name[index]}",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1)),
                    ],
                  )),
            );
          },
        ),
      ),
    );
  }
}
