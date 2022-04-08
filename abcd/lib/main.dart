import 'dart:math';
import 'package:abcd/question.dart';
import 'package:abcd/quiz.dart';
import 'package:abcd/screen1.dart';
import 'package:abcd/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'input_state.dart';
import 'routing.dart';
void main() {
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:Color(0xff0A0D22) ,
        primaryColor:Color(0xff0A0D22),
        textTheme: TextTheme(
          bodyText1: TextStyle(color:Colors.white
          ),
        ),
      ),
    );
  }
}




/////routing
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // home:Routing(),
//       initialRoute: '/',
//       routes: {
//         '/':(context)=>Routing(),
//         '/first':(context)=>Screen1(),
//         '/second':(context)=>Screen2(),
//       }
//       ,
//     );
//   }
// }



/////quizzler
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   List<Widget> scoreKeeper = [
//
//
//   ];
// QuizBrain a = QuizBrain();
//
// void checkAnswer(bool answer){
//   setState(() {
//       if(a.finished()==true){
//         scoreKeeper=[];
//         a.reset();
//       }else{
//         if(answer==a.getAnswer()){
//           scoreKeeper.add(Icon(Icons.check,color: Colors.green,));
//
//
//         }else{
//           scoreKeeper.add(Icon(Icons.close,color: Colors.red,));
//
//         }
//       }
//       a.nextQuestion();
//   });
// }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Expanded(
//               flex: 5,
//               child: Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: Center(
//                   child: Text(
//                    a.getQuestion(),
//                     // quizBrain.getQuestionText(),
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 25.0,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.all(15.0),
//                 child: TextButton(
//                   style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
//                   child: Text(
//                     'True',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20.0,
//                     ),
//                   ),
//                   onPressed: () {
//
//                     //The user picked true.
//                     checkAnswer(true);
//                   },
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.all(15.0),
//                 child: TextButton(
//                   style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
//                   child: Text(
//                     'False',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.white,
//                     ),
//                   ),
//                   onPressed: () {
//
//                     //The user picked false.
//                     checkAnswer(false);
//                   },
//                 ),
//               ),
//             ),
//             Row(
//                children: scoreKeeper,
//
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }



////xeylophone
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   void click(int number){
//     final  player = AudioCache();
//     player.play('note$number.wav');
//   }
//   Expanded block({required Color color,required int number,required String text}){
//     return
//       Expanded(
//         child: Container(
//           color: color,
//           child: TextButton(onPressed: (){
//             click(number);
//           },
//             child: Text(text),
//           ),
//         ),
//       );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//               block(color:Colors.red,number:1,text:"red"),
//             block(color:Colors.black,number:2,text:"black"),
//             block(color:Colors.lightBlueAccent,number:3,text:"blue"),
//             block(color:Colors.purple,number:4,text:"purple"),
//             block(color:Colors.yellow,number:6,text:"yellow"),
//             block(color:Colors.orange,number:7,text:"orange"),
//
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//

//////dice

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int leftdiceNumber = 1;
//   int rightdiceNumber = 2;
//
//   void abcd() {
//     setState(() {
//       leftdiceNumber = Random().nextInt(6) + 1;
//
//       rightdiceNumber = Random().nextInt(6) + 1;
//       ;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.red,
//         body: Center(
//           child: Row(
//             children: [
//               Expanded(
//                   child: TextButton(
//                       onPressed: () {
//                         abcd();
//                       },
//                       child: Image.asset('images/dice$leftdiceNumber.png'))),
//               Expanded(
//                   child: TextButton(
//                       onPressed: () {
//                         abcd();
//                       },
//                       child: Image.asset('images/dice$rightdiceNumber.png'))),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

///////Mi CARD
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//
//             CircleAvatar(
//               radius: 50,
//
//               backgroundImage: NetworkImage('https://images2.minutemediacdn.com/image/fetch/w_736,h_485,c_fill,g_auto,f_auto/https%3A%2F%2Fbamsmackpow.com%2Ffiles%2Fimage-exchange%2F2018%2F08%2Fie_66991-850x560.jpeg'),
//
//             ),
//             Container(
//               child: Text(
//                 'Batman',
//                 style: TextStyle(
//                   fontFamily:'Pacifico' ,
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white
//
//                 ),
//               ),
//             ),
//
//             SizedBox(height:20,width: 150,child: Divider(
//               color: Colors.white,
//             ),),
//             Container(
//               height: 30,
//               width: 700,
//               margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               color:Colors.white,
//               child: Row(
//
//                 children: [
//                   Icon(Icons.phone,color: Colors.teal,),
//                   SizedBox(width: 50.0,),
//                   Text("0332845458459568568568069" ,style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 15,)
//
//                     ,)
//                 ],
//               ),
//             )
//             ,
//
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//
//                 margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
//
//                 color:Colors.white,
//                 child: ListTile(
//                   leading: Icon(Icons.email,color: Colors.teal,),
//                   title: Text("udyfidfujsidopf@gmail.com" ,style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 15,),
//                 )
//               )
//
//
//         ),
//             ),
//   ],
//       ),
//     ));
//   }
// }
