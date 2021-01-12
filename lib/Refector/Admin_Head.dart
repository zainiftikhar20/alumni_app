import 'package:flutter/material.dart';

// ignore: camel_case_types
class Admin_header_pic extends StatelessWidget {
  const Admin_header_pic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(23.0, 55.0),
      child:
      // Adobe XD layer: 'admin-with-cogwheels' (shape)
      Container(
        width: 62.0,
        height: 59.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/admin.png'),
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

// ignore: camel_case_types
class Admin_Header extends StatelessWidget {
  const Admin_Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(138.0, 65.0),
      child: Text(
        'Admin',
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