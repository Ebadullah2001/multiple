import 'package:flutter/material.dart';

import 'routing.dart';
import 'screen1.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("screen 2"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return Routing();
              //     },
              //   ),
              // );
              Navigator.pushNamed(context,'/');
            },
            child: Text("goto 0",style: TextStyle(color: Colors.black),),
          ),

          TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return Screen1();
              //     },
              //   ),
              // );
              Navigator.pushNamed(context,'/first');
            },
            child: Text("goto 1",style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
