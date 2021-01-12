import 'package:flutter/material.dart';

// ignore: camel_case_types
class Student_png extends StatelessWidget {
  const Student_png({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(22.0, 50.0),
      child:
      // Adobe XD layer: 'manager' (shape)
      Container(
        width: 66.0,
        height: 69.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/student.png'),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.63), BlendMode.dstIn),
          ),
          border: Border.all(width: 1.0, color: const Color(0xa1707070)),
        ),
      ),
    );
  }
}