import 'package:flutter/material.dart';
import 'package:try_app/Refector/Alumni_Meet_Text.dart';
import 'package:try_app/Refector/Signout_Alumni_meet.dart';
import 'package:try_app/Refector/Student_pic.dart';
import 'package:try_app/Refector/Head.dart';
import 'package:try_app/Refector/Repeat_background_image.dart';
import 'package:try_app/Refector/bd_shade.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Repeat_Background_image(),//background
          bg_shade_repeat(),//background shade
          Head_Repeat(),
          Alumni_Meet_Text(), //Alumni Meet Text
          Student_png(),
          Signout_Alumni_meet(),//Sign out Button

        ],
      ),
    );
  }
}


