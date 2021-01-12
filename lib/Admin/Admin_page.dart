import 'package:flutter/material.dart';
import 'package:try_app/Refector/Admin_Head.dart';
import 'View_Working.dart';
import 'Add_Manager.dart';
import 'Remove_Manager.dart';
import 'file:///C:/Users/zaini/AndroidStudioProjects/alumni_app/lib/Main/Alumni_Main.dart';
import 'package:try_app/Refector/Head.dart';
import 'package:try_app/Refector/Repeat_background_image.dart';
import 'package:try_app/Refector/bd_shade.dart';


// ignore: camel_case_types
class Admin_page extends StatelessWidget {
  Admin_page({
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
          Admin_Header(),//Admin Text Header
          Admin_header_pic(),//admin-with-cogwheels
          Transform.translate(
            offset: Offset(90.0, 140.0),
            child: Text(
              'Admin',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 71,
                color: const Color(0xff34183e),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),//Admin Text
          Transform.translate(
            offset: Offset(0.0, 263.0),
            child:
                // Adobe XD layer: 'Add_manager_button' (shape)

                FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Add_Manager()),
                    );
                  },
                  child: Container(
              width: 341.0,
              height: 89.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(46.0),
                  color: const Color(0x99211f1f),
                  border: Border.all(width: 1.0, color: const Color(0x99707070)),
              ),
            ),
                ),
          ),//Add Manager Button
          Transform.translate(
            offset: Offset(116.0, 286.0),
            child: Text(
              'Add Manager',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 31,
                color: const Color(0xfff6f2f2),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),//Add Manager Text
          Transform.translate(
            offset: Offset(0.0, 522.0),
            child:
                // Adobe XD layer: 'View_button' (shape)
                FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => View_Working()),
                    );
                  },
                  child: Container(
              width: 341.0,
              height: 89.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(46.0),
                  color: const Color(0x99211f1f),
                  border: Border.all(width: 1.0, color: const Color(0x99707070)),
              ),
            ),
                ),
          ),//View Working Button
          Transform.translate(
            offset: Offset(107.0, 549.0),
            child: Text(
              'View Working',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 31,
                color: const Color(0xfff6f2f2),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),//View Working Text
          Transform.translate(
            offset: Offset(0.0, 396.0),
            child:
                // Adobe XD layer: 'Rmove_manager_button' (shape)
                FlatButton(
                  onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Remove_Manager()),
                  );},
                  child: Container(
              width: 341.0,
              height: 89.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(46.0),
                  color: const Color(0x99211f1f),
                  border: Border.all(width: 1.0, color: const Color(0x99707070)),
              ),
            ),
                ),
          ),//Remove Manager Button
          Transform.translate(
            offset: Offset(98.0, 420.0),
            child: Text(
              'Remove Manager',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 31,
                color: const Color(0xfff6f2f2),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),//Remove Manager Text

          Transform.translate(
            offset: Offset(23.0, 270.0),
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
            offset: Offset(26.0, 406.0),
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
            offset: Offset(33.0, 536.0),
            child:
                // Adobe XD layer: 'people' (shape)
                Container(
              width: 58.0,
              height: 58.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/view_m.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),//view_m.png
          Transform.translate(
            offset: Offset(118.0, 632.0),
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
          ),//sign-out shape
        ],
      ),
    );
  }
}


