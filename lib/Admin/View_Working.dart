import 'package:flutter/material.dart';
import 'package:try_app/Refector/Head.dart';
import 'package:try_app/Refector/Repeat_background_image.dart';
import 'package:try_app/Refector/bd_shade.dart';
import 'package:try_app/Student/Chat_Student.dart';
import '../Refector/Admin_Head.dart';
import '../Student/SA.dart';
import 'file:///C:/Users/zaini/AndroidStudioProjects/alumni_app/lib/Student/SP.dart';


// ignore: camel_case_types
class View_Working extends StatefulWidget {

  const View_Working({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _View_WorkingState();
}

// ignore: camel_case_types
class _View_WorkingState extends State<View_Working>
    with SingleTickerProviderStateMixin {
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
            Admin_Header(),//Admin Text Header
            Admin_header_pic(),//admin-with-cogwheels
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









