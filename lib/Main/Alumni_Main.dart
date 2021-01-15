import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:try_app/Login_Pages/Admin_Login.dart';
import 'package:try_app/Login_Pages/Manager_Login.dart';
import 'package:try_app/Login_Pages/Student_Login.dart';
import 'package:try_app/Refector/Head.dart';
import 'package:try_app/Refector/Repeat_background_image.dart';
import 'package:try_app/Refector/bd_shade.dart';

// ignore: camel_case_types
class Alumni_Main extends StatefulWidget {
  @override
  _Alumni_MainState createState() => _Alumni_MainState();
}

// ignore: camel_case_types
class _Alumni_MainState extends State<Alumni_Main> {


  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Repeat_Background_image(),
          bg_shade_repeat(),
          Head_Repeat(),
          Transform.translate(
            offset: Offset(103.0, 65.0),
            child: Text(
              'Alumni Meet',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 31,
                color: const Color(0xfff6f2f2),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),//Alumni Meet Text
          Transform.translate(
            offset: Offset(85.0, 150.0),
            child: Text(
              'Alumni',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 71,
                color: const Color(0xff34183e),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),//Alumni Text
          Transform.translate(

            offset: Offset(0.0, 255.0),


            // Adobe XD layer: 'Admin_button' (shape)
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Admin_Login()),
                );
              },
              child: Container(
                width: 287.0,
                height: 91.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(46.0),
                  color: const Color(0x99211f1f),
                  border: Border.all(width: 1.0, color: const Color(0x99707070),
                  ),
                ),
              ),
            ),
          ),//Admin_button
          Transform.translate(
            offset: Offset(120.0, 280.0),
            child: Text(
              'Admin',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 31,
                color: const Color(0xfff6f2f2),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),//Admin Text
          Transform.translate(
            offset: Offset(0.0, 473.0),
            child:
            // Adobe XD layer: 'Student_button' (shape)
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Student_Login()),
                );
              },
              child: Container(
                width: 287.0,
                height: 91.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(46.0),
                  color: const Color(0x99211f1f),
                  border: Border.all(width: 1.0, color: const Color(0x99707070)),
                ),
              ),
            ),
          ),//Student_button
          Transform.translate(
            offset: Offset(120.0, 498.0),
            child: Text(
              'Student',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 31,
                color: const Color(0xfff6f2f2),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),//Student Text
          Transform.translate(
            offset: Offset(0.0, 361.0),
            child:
            // Adobe XD layer: 'Mananger_button' (shape)
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Manager_Login()),
                );
              },
              child: Container(
                width: 287.0,
                height: 91.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(46.0),
                  color: const Color(0x99211f1f),
                  border: Border.all(width: 1.0, color: const Color(0x99707070)),
                ),
              ),
            ),
          ),//Manager_button
          Transform.translate(
            offset: Offset(120.0, 386.0),
            child: Text(
              'Manager',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 31,
                color: const Color(0xfff6f2f2),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),//Manager Text
          Transform.translate(
            offset: Offset(23.0, 55.0),
            child:
            // Adobe XD layer: 'admin-with-cogwheels' (shape)
            Container(
              width: 62.0,
              height: 59.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/alumni.png'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.63), BlendMode.dstIn),
                ),
                border: Border.all(width: 1.0, color: const Color(0xa1707070)),
              ),
            ),
          ),//alumni.png
          Transform.translate(
            offset: Offset(30.0, 270.0),
            child:
            // Adobe XD layer: 'admin-with-cogwheels' (shape)
            Container(
              width: 62.0,
              height: 59.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/admin.png'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.63), BlendMode.dstIn),
                ),
                border: Border.all(width: 1.0, color: const Color(0xa1707070)),
              ),
            ),
          ),//admin.png
          Transform.translate(
            offset: Offset(30.0, 376.0),
            child:
            // Adobe XD layer: 'admin-with-cogwheels' (shape)
            Container(
              width: 62.0,
              height: 59.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/manager.png'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.63), BlendMode.dstIn),
                ),
                border: Border.all(width: 1.0, color: const Color(0xa1707070)),
              ),
            ),
          ),//manager.png
          Transform.translate(
            offset: Offset(30.0, 490.0),
            child:
            // Adobe XD layer: 'admin-with-cogwheels' (shape)
            Container(
              width: 62.0,
              height: 59.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/student.png'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.63), BlendMode.dstIn),
                ),
                border: Border.all(width: 1.0, color: const Color(0xa1707070)),
              ),
            ),
          ),//student.png
        ],
      ),
    );
  }
}







