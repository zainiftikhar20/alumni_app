import 'package:flutter/material.dart';

// ignore: camel_case_types
class Alumni_Meet_Text extends StatelessWidget {
  const Alumni_Meet_Text({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(109.0, 67.0),
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
    );
  }
}