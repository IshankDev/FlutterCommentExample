import 'package:comment_test/Utils/SizeConfig.dart';
import 'package:comment_test/View/CommentScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.local_post_office,
              size: 50,),
              Text(
                "Post\nApp",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 10),
              ),
            ],
          ),
        ));
  }

  @override
  void initState() {
    splashWait();
    super.initState();
  }

  void splashWait() {
    Future.delayed(Duration(seconds: 2)).then((onValue) {
      Navigator.of(context).pushAndRemoveUntil(
          new MaterialPageRoute(builder: (BuildContext context) {
        return CommentScreen();
      }), (Route<dynamic> route) => false);
    });
  }
}
