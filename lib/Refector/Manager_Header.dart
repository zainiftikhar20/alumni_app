import 'package:flutter/material.dart';

// ignore: camel_case_types
class Manager_pic extends StatelessWidget {
  const Manager_pic({
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
            image: const AssetImage('assets/manager.png'),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.63), BlendMode.dstIn),
          ),
          border: Border.all(
              width: 1.0, color: const Color(0xa1707070)),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Manager_Text extends StatelessWidget {
  const Manager_Text({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(129.0, 67.0),
      child: Text(
        'Manager',
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