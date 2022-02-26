import "package:flutter/material.dart";
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';

import 'appColor.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AppColor>(
        create: (BuildContext context) => AppColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Consumer<AppColor>(
              builder: (context, appColor, _) =>
                  Text("Provider State Manajement", style: TextStyle(color: appColor.maColor),),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<AppColor>(
                builder: (context, appColor, _) => AnimatedContainer(
                  width: 200,
                  height: 200,
                  color: appColor.maColor,
                  duration: Duration(
                    milliseconds: 500,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(margin: EdgeInsets.all(5), child: Text("AB")),
                  Consumer<AppColor>(
                    builder: (context, appColor, _) => Switch(
                      value: appColor.isLightBlue,
                      onChanged: (newValue) {
                        appColor.isLightBlue = newValue;
                      },
                    ),
                  ),
                  Container(
                    child: Text("LB"),
                    margin: EdgeInsets.all(5),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
