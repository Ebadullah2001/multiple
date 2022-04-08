import 'package:flutter/material.dart';

import 'constant.dart';

class BottomButton extends StatelessWidget {
  final onTap;
  final String buttonTitle;

  BottomButton({required this.buttonTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              buttonTitle,
              style: kLargeButtonTextStyle,
            )),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: KBottomHeight,
      ),
    );
  }
}