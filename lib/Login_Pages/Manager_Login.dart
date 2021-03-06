import 'package:adobe_xd/adobe_xd.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:try_app/Manager/Manager_page.dart';
import 'package:try_app/Refector/Exit_Button.dart';
import 'package:try_app/Refector/Exit_Text.dart';
import 'package:try_app/Refector/Head.dart';
import 'package:try_app/Refector/Login_Text.dart';
import 'package:try_app/Refector/Repeat_background_image.dart';
import 'package:try_app/Refector/bd_shade.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:try_app/Validator/EmailAndPswdValidator.dart';

// ignore: camel_case_types, must_be_immutable
class Manager_Login extends StatefulWidget {
  @override
  _Manager_LoginState createState() => _Manager_LoginState();
}

// ignore: camel_case_types
class _Manager_LoginState extends State<Manager_Login> {
  String uid;
  final GlobalKey<FormState> _managerLogin=GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  TextEditingController Memail_Controller;
  // ignore: non_constant_identifier_names
  TextEditingController MpasswordController;
  final auth=FirebaseAuth.instance;
  @override
  initState(){
    Memail_Controller =new TextEditingController();
    MpasswordController=new TextEditingController();
    super.initState();
  }
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Container(
          child: Form(
            key: _managerLogin,
            child: Stack(
              children: <Widget>[
                Repeat_Background_image(),
                bg_shade_repeat(),
                Head_Repeat(),
                Transform.translate(
                  offset: Offset(95.0, 65.0),
                  child: Text(
                    'Manager Login',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 31,
                      color: const Color(0xfff6f2f2),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),//Manager Login Text
                Transform.translate(
                  offset: Offset(55.0, 150.0),
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
                Transform.translate(   //Login box
                  offset: Offset(88.0, 451.0),
                  child:
                  // Adobe XD layer: 'Sign up_button' (shape)
                  FlatButton(
                    onPressed: (){
                      if(_managerLogin.currentState.validate()){
                        FirebaseAuth.instance.signInWithEmailAndPassword(email: Memail_Controller.text, password: MpasswordController.text)
                            .then((currentUser) => FirebaseFirestore.instance.collection("manager")
                            .doc(uid).get()
                            .then((DocumentSnapshot result) => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context)=>Manager_page()),
                        ),));
                      }
                      else{
                        showDialog(context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Error"),
                              content: Text("Please Enter data"),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text("Close"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: Container(
                      width: 157.0,
                      height: 91.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(46.0),
                        color: const Color(0x99211f1f),
                        border: Border.all(width: 1.0, color: const Color(0x99707070)),
                      ),
                    ),
                  ),
                ),//Login Box
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(10.0, 250.0, 355.0, 58.0),
                  size: Size(375.0, 712.0),
                  child: TextFormField(

                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email"
                    ),
                    validator: emailValidator,
                    controller: Memail_Controller,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),//Email
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(10.0, 250.0, 355.0, 58.0),
                  size: Size(375.0, 550.0),
                  child:TextFormField(

                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Password"
                    ),
                    validator: pwdValidator,
                    controller: MpasswordController,
                    obscureText: true,
                  ),
                ),//password
                Login_Text(),//Login Text
                Exit_Button(),//Exit Button
                Exit_Text(),//Exit Text
                Transform.translate(
                  offset: Offset(23.0, 55.0),
                  child:
                  // Adobe XD layer: 'Manager' (shape)
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
                ),//Manager png
              ],
            ),
          ),
        ),
      ),
    );
  }
}







