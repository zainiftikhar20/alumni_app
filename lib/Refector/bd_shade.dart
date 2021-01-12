import 'package:flutter/material.dart';

// ignore: camel_case_types
class bg_shade_repeat extends StatelessWidget {
  const bg_shade_repeat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.0,
      height: 823.0,
      decoration: BoxDecoration(
        color: const Color(0xa1e2dede),
        border: Border.all(width: 1.0, color: const Color(0xa1707070)),
      ),
    );
  }
}