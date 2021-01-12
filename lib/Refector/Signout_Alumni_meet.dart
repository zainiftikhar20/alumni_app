import 'package:flutter/material.dart';
import 'package:try_app/Main/Alumni_Main.dart';

// ignore: camel_case_types
class Signout_Alumni_meet extends StatelessWidget {
  const Signout_Alumni_meet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(261.0, 53.0),
      child: Transform.rotate(
        angle: 0.0,
        child:
        // Adobe XD layer: 'sign-out' (shape)
        FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Alumni_Main()),
            );
          },
          child: Container(
            width: 44.0,
            height: 64.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/signout.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}