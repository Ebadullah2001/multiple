import 'package:flutter/material.dart';

import 'screen1.dart';
import 'screen2.dart';

class Routing extends StatefulWidget {
  const Routing({Key? key}) : super(key: key);

  @override
  State<Routing> createState() => _RoutingState();
}

class _RoutingState extends State<Routing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("routing"),
      ),
      body: Column(
        children: [
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
          TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return Screen2();
              //     },
              //   ),
              // );

              Navigator.pushNamed(context,'/second');
            },
            child: Text("goto 2",style: TextStyle(color: Colors.black),),
          ),
        ],
      ),

    );
  }
}
