import 'package:adobe_xd/adobe_xd.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:try_app/Admin/Admin_page.dart';
import 'package:try_app/Refector/Head.dart';
import 'package:try_app/Refector/Repeat_background_image.dart';
import 'package:try_app/Refector/bd_shade.dart';
import 'package:try_app/Validator/EmailAndPswdValidator.dart';

// ignore: camel_case_types
class Add_Manager extends StatefulWidget {
  Add_Manager({Key key}) : super(key: key);
  @override
  _Add_ManagerState createState() => _Add_ManagerState();
}

//ignore: camel_case_types
class _Add_ManagerState extends State<Add_Manager> {

  String uid ;
  final auth=FirebaseAuth.instance;
  // ignore: non_constant_identifier_names
  final GlobalKey<FormState>_Add_ManagerKey=GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  TextEditingController MnameController;
  // ignore: non_constant_identifier_names
  TextEditingController MdepartmentController;
  // ignore: non_constant_identifier_names
  TextEditingController MnumberController;
  // ignore: non_constant_identifier_names
  TextEditingController MemailController;
  // ignore: non_constant_identifier_names
  TextEditingController MpswdController;
  @override
  initState(){
    MnameController = new TextEditingController();
    MdepartmentController = new TextEditingController();
    MnumberController = new TextEditingController();
    MemailController = new TextEditingController();
    MpswdController = new TextEditingController();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Container(
        child: Form(
          key: _Add_ManagerKey,
          child: Stack(
            children: <Widget>[
              Repeat_Background_image(),
              bg_shade_repeat(),
              Head_Repeat(),
              Transform.translate(
                offset: Offset(110.0, 69.0),
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
              ),//Add_Manager Text Header
              Transform.translate(
                offset: Offset(55.0, 135.0),
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
              ),//Add_Manager Text
              Pinned.fromSize(
                bounds: Rect.fromLTWH(10.0, 250.0, 355.0, 58.0),
                size: Size(375.0, 930.0),
                child: TextFormField(

                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Name"
                  ),
                  controller: MnameController,
                  validator: nameValidator,

                ),//Email
              ),//Name Text
              Pinned.fromSize(
                bounds: Rect.fromLTWH(10.0, 250.0, 355.0, 58.0),
                size: Size(375.0, 730.0),
                child: TextFormField(

                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Department"
                  ),
                  controller: MdepartmentController,
                ),//Email
              ),//Department
              Pinned.fromSize(
                bounds: Rect.fromLTWH(10.0, 250.0, 355.0, 58.0),
                size: Size(375.0, 590.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Contact Number"
                  ),
                  controller: MnumberController,
                ),//Email
              ),//Contact
              Pinned.fromSize(
                bounds: Rect.fromLTWH(10.0, 250.0, 355.0, 58.0),
                size: Size(375.0, 495.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email"
                  ),
                  controller: MemailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: emailValidator,
                ),//Email
              ),//Email
              Pinned.fromSize(
                bounds: Rect.fromLTWH(10.0, 250.0, 355.0, 58.0),
                size: Size(375.0, 425.0),
                child: TextFormField(

                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password"
                  ),
                  controller: MpswdController,
                  obscureText: true,
                  validator: pwdValidator,
                ),//Email
              ),//password
              Transform.translate(   //Register Box
                offset: Offset(90.0, 530.0),
                child:
                // Adobe XD layer: 'Student_button' (shape)
                FlatButton(
                  onPressed: (){

                     if (_Add_ManagerKey.currentState.validate()) {


                       FirebaseAuth.instance.
                       createUserWithEmailAndPassword(email: MemailController.text, password: MpswdController.text)
                           .then((currentUser) => FirebaseFirestore.instance.collection("manager").doc(uid)
                           .set(
                           {
                           "name":MnameController.text,
                           "department":MdepartmentController.text,
                           "contact":MnumberController.text,
                           "email":MemailController.text,
                           "pswd":MpswdController.text,
                             "role":"manager",
                           }).then((result) => Navigator.push
                         (context, MaterialPageRoute(builder: (context)=>Admin_page()),
                       ),)

                       );
                     }
                     else{
                       showDialog(context: context,builder: (BuildContext context){
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
                             ]
                         );
                       });
                     }
                  },
                 // onPressed: () {
                 //  Navigator.push(
                 //    context,
                 //     MaterialPageRoute(builder: (context) => Student_Login()),
                 //   );
                 //    },
                   child: Container(
                     width: 150.0,
                    height: 91.0,
                     decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(46.0),
                     color: const Color(0x99211f1f),
                   border: Border.all(width: 1.0, color: const Color(0x99707070)),
                   ),
                 ),
                 ),
              ),//Register box
              Transform.translate(
                offset: Offset(131.0, 560.0),
                child: Text(
                  'Register ',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 31,
                    color: const Color(0xfff6f2f2),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),//Register
              Transform.translate(
                offset: Offset(90.0, 640.0),
                child:
                // Adobe XD layer: 'Exit_button' (shape)
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Admin_page()),
                    );
                  },
                  child: Container(
                    width: 150.0,
                    height: 91.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(46.0),
                      color: const Color(0x99211f1f),
                      border: Border.all(width: 1.0, color: const Color(0x99707070)),
                    ),
                  ),
                ),
              ),//Exit Button
              Transform.translate(
                offset: Offset(160.0, 670.0),
                child: Text(
                  'Exit',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 31,
                    color: const Color(0xfff6f2f2),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),//Exit
              Transform.translate(
                offset: Offset(20.0, 50.0),
                child:
                // Adobe XD layer: 'reading' (shape)
                Container(
                  width: 68.0,
                  height: 68.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/admin.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),//ManagerImage
            ],
          ),
        ),
      ),
    );
  }
}



