import 'package:flutter/material.dart';

class Comment with ChangeNotifier {
  int _id;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String _name;
  String _comment;
  String _userProfileImage;
  var _date;
  var _time;

  List<Comment> _internalComment;

  set internalComment(List<Comment> value) {
    _internalComment = value;
  }

  List<Comment> get internalComment => _internalComment;

  set setName(String value) {
    _name = value;
  }

  set setComment(String value) {
    _comment = value;
  }

  set setTime(value) {
    _time = value;
  }

  set setDate(value) {
    _date = value;
  }

  set setUserProfileImage(String value) {
    _userProfileImage = value;
  }

  get time => _time;

  get date => _date;

  String get userProfileImage => _userProfileImage;

  String get comment => _comment;

  String get name => _name;
}
