import 'package:comment_test/Model/Comment.dart';
import 'package:comment_test/Utils/SizeConfig.dart';
import 'package:comment_test/Utils/Utils.dart';
import 'package:flutter/material.dart';

class CommentItem extends StatefulWidget {
  final Comment comment;

  final isInternal;

  @override
  _CommentItemState createState() => _CommentItemState();

  CommentItem({this.comment, this.isInternal});
}

class _CommentItemState extends State<CommentItem> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: widget.isInternal
          ? EdgeInsets.only(left: 40, top: 10, bottom: 10)
          : EdgeInsets.only(left: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            widget.comment.userProfileImage,
            width: SizeConfig.safeBlockHorizontal * 18,
            height: SizeConfig.safeBlockHorizontal * 18,
            fit: BoxFit.cover,
          ),
          Container(
            width: widget.isInternal
                ? SizeConfig.screenWidth / 1.5
                : SizeConfig.screenWidth / 1.3,
            margin: EdgeInsets.only(right: 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: widget.comment.name,
                      style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                          fontWeight: FontWeight.bold,
                          color: Utils.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 10, bottom: 5),
                  child: RichText(
                    textAlign: TextAlign.start,
                    softWrap: true,
                    text: TextSpan(
                      text: widget.comment.comment,
                      style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 5.0,
                          color: Utils.black),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, bottom: 5, right: 10, top: 8),
                      child: RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                          text: "Reply",
                          style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 4.0,
                              color: Colors.black26),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 8, bottom: 5),
                      child: RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                          text: widget.comment.date +
                              " at " +
                              widget.comment.time,
                          style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 3.0,
                              color: Colors.black26),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
