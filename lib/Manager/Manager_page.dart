import 'package:flutter/material.dart';
import 'Add_Student.dart';
import 'Activity.dart';
import 'file:///C:/Users/zaini/AndroidStudioProjects/alumni_app/lib/Main/Alumni_Main.dart';
import 'package:try_app/Refector/Head.dart';
import 'package:try_app/Refector/Repeat_background_image.dart';
import 'package:try_app/Refector/bd_shade.dart';
import 'file:///C:/Users/zaini/AndroidStudioProjects/alumni_app/lib/Manager/Remove_Student.dart';

// ignore: camel_case_types
class Manager_page extends StatelessWidget {
  Manager_page({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Repeat_Background_image(),
          bg_shade_repeat(),
          Head_Repeat(),
          Transform.translate(
            offset: Offset(128.0, 63.0),
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
          ),// Manager Text Header
          Transform.translate(
            offset: Offset(57.0, 126.0),
            child: Text(
              'Manager',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 71,
                color: const Color(0xff34183e),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),//Manager Text
          Transform.translate(
            offset: Offset(0.0, 238.0),
            child:
            // Adobe XD layer: 'Add student_button' (shape)
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Add_Student()),
                );
              },
              child: Container(
                width: 300.0,
                height: 91.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(46.0),
                  color: const Color(0x99211f1f),
                  border: Border.all(width: 1.0, color: const Color(0x99707070)),
                ),
              ),
            ),
          ),//Add student_button
          Transform.translate(
            offset: Offset(104.0, 262.0),
            child:
                // Adobe XD layer: 'Add_student' (text)
                Text(
              'Add Student',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 31,
                color: const Color(0xfff6f2f2),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),//Add student Text
          Transform.translate(
            offset: Offset(0.0, 465.0),
            child:
                // Adobe XD layer: 'Post_button' (shape)
                FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Post_activity()),
                    );
                  },
                  child: Container(
              width: 300.0,
              height: 91.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(46.0),
                  color: const Color(0x99211f1f),
                  border: Border.all(width: 1.0, color: const Color(0x99707070)),
              ),
            ),
                ),
          ),//Activity button
          Transform.translate(
            offset: Offset(110.0, 489.0),
            child: Text(
              'Activity',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 31,
                color: const Color(0xfff6f2f2),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),//Activity Text
          Transform.translate(
            offset: Offset(0.0, 351.0),
            child:
                // Adobe XD layer: 'Remove_button' (shape)
                FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Remove_Student()),
                    );
                  },
                  child: Container(
              width: 300.0,
              height: 91.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(46.0),
                  color: const Color(0x99211f1f),
                  border: Border.all(width: 1.0, color: const Color(0x99707070)),
              ),
            ),
                ),
          ),//Remove_button
          Transform.translate(
            offset: Offset(100.0, 376.0),
            child: Text(
              'Remove Student',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 31,
                color: const Color(0xfff6f2f2),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),//Remove_Student Text
          Transform.translate(
            offset: Offset(23.0, 55.0),
            child:
                // Adobe XD layer: 'manager' (shape)
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
            offset: Offset(24.0, 246.0),
            child:
                // Adobe XD layer: 'add-user' (shape)
                Container(
              width: 78.0,
              height: 78.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/add_m.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),//add_m.png
          Transform.translate(
            offset: Offset(29.0, 362.0),
            child:
                // Adobe XD layer: 'remove-user' (shape)
                Container(
              width: 62.0,
              height: 61.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/rem_m.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),//rem_m.png
          Transform.translate(
            offset: Offset(35.0, 483.0),
            child:
                // Adobe XD layer: 'post' (shape)
                Container(
              width: 62.0,
              height: 63.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/post.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),//post.png
          Transform.translate(
            offset: Offset(115.0, 681.0),
            child: Transform.rotate(
              angle: 0.0,
              child:
                  // Adobe XD layer: 'sign-out' (shape)
                  FlatButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Alumni_Main()),
                      );
                    },
                    child: Container(
                width: 74.0,
                height: 74.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/signout.png'),
                      fit: BoxFit.fill,
                    ),
                ),
              ),
                  ),
            ),
          ),//sign-out button

        ],
      ),
    );
  }
}

