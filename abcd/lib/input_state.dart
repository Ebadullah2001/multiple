import 'package:abcd/calculator_brain.dart';
import 'package:abcd/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'button.dart';
import 'constant.dart';
import 'container.dart';
import 'icons_content.dart';

enum Gender {
  male,
  female,
  none,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  Gender selectgender = Gender.none;
  int height = 180;
  int weight = 60;
  int Age = 15;

  //male is 1 and female is 2
  // void colorupdate(Gender sgender){
  //
  //   if(sgender==Gender.male){
  //
  //     if(maleCardColor==inactiveCardColor){
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     }else{
  //       maleCardColor==inactiveCardColor;
  //     }
  //   }if(sgender==Gender.female){
  //     if(femaleCardColor==inactiveCardColor){
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     }else{
  //       femaleCardColor==inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          backgroundColor: KInactiveCardColor,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Resuablecard(
                      onPress: () {
                        setState(() {
                          selectgender = Gender.male;
                        });
                      },
                      c: selectgender == Gender.male
                          ? kActiveCardColor
                          : KInactiveCardColor,
                      cardChild: Malefemalewidget(
                        genderIcon: FontAwesomeIcons.mars,
                        genderText: "Male",
                      ),
                    ),
                  ),
                  Expanded(
                    child: Resuablecard(
                      onPress: () {
                        setState(() {
                          selectgender = Gender.female;
                        });
                      },
                      c: selectgender == Gender.female
                          ? kActiveCardColor
                          : KInactiveCardColor,
                      cardChild: Malefemalewidget(
                          genderIcon: FontAwesomeIcons.venus,
                          genderText: "Female"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Resuablecard(
                onPress: () {
                  setState(() {
                    selectgender = Gender.female;
                  });
                },
                c: KInactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: kLabelTextStyle2),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xff8D8E98),
                        thumbColor: Color(0xffEB1555),
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Resuablecard(
                      onPress: () {
                        setState(() {
                          selectgender = Gender.female;
                        });
                      },
                      c: KInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kLabelTextStyle2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Resuablecard(
                      onPress: () {
                        setState(() {
                          selectgender = Gender.female;
                        });
                      },
                      c: KInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: kLabelTextStyle,
                          ),
                          Text(
                            Age.toString(),
                            style: kLabelTextStyle2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    Age++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    Age--;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
                buttonTitle: "Calculate",
                onTap: () {
                  CalculatorBrain calc=CalculatorBrain(height: height, weight: weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Result(
                          bmiResult: calc.calculateBMI(),
                          resultText: calc.getResult(),
                          interpretation: calc.getInterpretation(),
                        );
                      },
                    ),
                  );
                })
          ],
        )

        // floatingActionButton: Theme(
        //   data:ThemeData(accentColor: Colors.purple),
        //   child: FloatingActionButton(
        //     onPressed: () {  },
        //     child: Icon(Icons.add),
        //   ),
        // ),
        );
  }
}



/////custom widget
class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final onPressed;

  RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xff4C4F5E),
    );
  }
}
