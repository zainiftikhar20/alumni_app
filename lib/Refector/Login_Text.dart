import 'package:flutter/material.dart';
// ignore: camel_case_types
class Login_Text extends StatelessWidget {
  const Login_Text({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(152.0, 476.0),
      child: Text(
        'Login',
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