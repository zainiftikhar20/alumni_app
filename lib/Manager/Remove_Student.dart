import 'dart:ui';
import 'package:adobe_xd/pinned.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:try_app/Refector/Head.dart';
import 'package:try_app/Refector/Repeat_background_image.dart';
import 'package:try_app/Refector/bd_shade.dart';


// ignore: camel_case_types
class Remove_Student extends StatelessWidget {
  Remove_Student({
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
          Pinned.fromSize(
            bounds: Rect.fromLTWH(10.0, 174.0, 355.0, 615.0),
            size: Size(375.0, 860.0),
            pinLeft: true,
            pinRight: true,
            pinBottom: true,
            fixedHeight: true,
            child: Container(
              child: StreamBuilder(

                  stream: FirebaseFirestore.instance.collection('students').snapshots(),
                  builder:
                      (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ListView.builder(
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (context,index){
                        DocumentSnapshot users=snapshot.data.documents[index];
                        return Container(
                            color: const Color(0xa6211f1f),

                            child:Card(

                              color: const Color(0xa1e2dede),
                              elevation: 10.0,
                              child: ListTile(

                                leading: Icon(Icons.person),
                                title: Text(
                                  "${users['name']}        ${users['department']}",
                                ),
                                subtitle: Text("${users['email']}"),
                                onLongPress: (){
                                  FirebaseFirestore.instance.collection("students").doc(users.id).delete();
                                },
                              ),
                            )

                        );

                      },

                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
