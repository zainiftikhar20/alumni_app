import 'package:flutter/material.dart';
import 'package:try_app/Refector/Head.dart';
import 'package:try_app/Refector/Repeat_background_image.dart';
import 'package:try_app/Refector/bd_shade.dart';
import 'package:try_app/Student/Chat_Student.dart';
import 'file:///C:/Users/zaini/AndroidStudioProjects/alumni_app/lib/Student/SP.dart';
import '../Refector/Alumni_Meet_Text.dart';
import '../Refector/Student_pic.dart';
import 'SA.dart';

// ignore: camel_case_types
class Student_Meet extends StatefulWidget {

  const Student_Meet({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Student_MeetState();
}

// ignore: camel_case_types
class _Student_MeetState extends State<Student_Meet>
    with SingleTickerProviderStateMixin {
  // bool isLoading = false;
  // File avatarImageFile;
  TabController _tabController;
  static const _kTabs = <Tab>[

    Tab(icon: Icon(Icons.announcement), text: 'ANNOUNCEMENTS', ),
    Tab(icon: Icon(Icons.post_add), text: 'POST'),
    Tab(icon: Icon(Icons.chat), text: 'CHAT'),


  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 0, length: 3);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[
            Repeat_Background_image(),
            bg_shade_repeat(),
            Head_Repeat(),
            Alumni_Meet_Text(), //Alumni Meet Text
            Student_png(),//student.png
            TabBarView(
              controller: _tabController,
              children: [
                SA(),
                SP(),
                Chat(),
              ],
            ),
          ]
      ),

      bottomNavigationBar: Material(
        color: const Color(0x99211f1f),
        child: TabBar(
          tabs: _kTabs,
          controller: _tabController,
        ),
      ),
    );
  }
}









