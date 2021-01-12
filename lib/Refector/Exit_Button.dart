import 'package:flutter/material.dart';
import 'package:try_app/Main/Alumni_Main.dart';
// ignore: camel_case_types
class Exit_Button extends StatelessWidget {
  const Exit_Button({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(90.0, 557.0),
      child:

      // Adobe XD layer: 'Exit_button' (shape)
      FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Alumni_Main()),);
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
    );
  }
}