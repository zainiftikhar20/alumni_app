import 'package:flutter/material.dart';
// ignore: camel_case_types
class Exit_Text extends StatelessWidget {
  const Exit_Text({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(160.0, 582.0),
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
    );
  }
}