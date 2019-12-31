import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static const primaryColor = Color(0xFFf52d56);
  static const white = Color(0xFFF5F5F5);
  static const grey = Color(0xFF9B9B9B);
  static const greyDark = Color(0xFF353B48);
  static const black = Color(0xFF262628);
  static const blackLight = Color(0xFF2B2F3A);
  static const blue = Color(0xFF00A2FE);
  static const blue_dark = Color(0xFF00358D);
  static const inactive = Color(0xFF404040);
  static const primaryAccentColor = Color(0xFFFF9500);
  static const primarySecondColor = Color(0xFFf52d56);
  static const primaryDarkColor = Color(0xFFf52d56);
  static const erroColor = Color(0xFF7B8292);

  void showToast(String tostmsg) {
    Fluttertoast.showToast(
        msg: tostmsg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
