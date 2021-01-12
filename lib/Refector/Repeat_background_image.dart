import 'package:flutter/material.dart';

// ignore: camel_case_types
class Repeat_Background_image extends StatelessWidget {
  const Repeat_Background_image({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, 0.0),
      child:
      // Adobe XD layer: 'new' (shape)
      Container(
        width: 644.0,
        height: 812.5,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/new.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}