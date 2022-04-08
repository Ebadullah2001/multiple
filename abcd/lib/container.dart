import 'package:flutter/material.dart';

class Resuablecard extends StatelessWidget {

  Resuablecard({required this.c,required this.cardChild ,required this.onPress});
  final Color c;
  final Widget cardChild;
  final  onPress;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
