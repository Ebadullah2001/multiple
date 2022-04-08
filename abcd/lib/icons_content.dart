import 'package:flutter/material.dart';

import 'constant.dart';



class Malefemalewidget extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;

  Malefemalewidget({required this.genderIcon, required this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style:kLabelTextStyle,
        )
      ],
    );
  }
}
