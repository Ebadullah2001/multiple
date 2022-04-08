import 'package:flutter/material.dart';

import 'screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("screen 1"),
      ),
      body: Column(
        children: [
          TextButton(

            onPressed: () {
              // Navigator.pop(context);
              Navigator.pushNamed(context,'/');
            },
            child: Text(" back to 0",style: TextStyle(color: Colors.black),),
          ),TextButton(
            onPressed: () {

              // Navigator.push(context, MaterialPageRoute(builder: (context){return Screen2();},),);
              Navigator.pushNamed(context,'/second');
            },
            child: Text(" goto 2",style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
