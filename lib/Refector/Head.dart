import 'package:flutter/material.dart';

// ignore: camel_case_types
class Head_Repeat extends StatelessWidget {
  const Head_Repeat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, 40.0),
      child: Container(
        width: 375.0,
        height: 91.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(46.0),
          color: const Color(0xa6211f1f),
          border: Border.all(width: 1.0, color: const Color(0xa6707070)),
        ),
      ),
    );
  }
}