
import 'package:bmi_calcluter/screans/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calcluter/compnents/reusbleCard.dart';
import 'package:bmi_calcluter/compnents/genderWiget.dart';
import '../constants.dart';
import '../compnents/my_floating_bottn.dart';
import '../compnents/bottem_calculate.dart';
import 'package:bmi_calcluter/calculater_brain.dart';

enum Maletype{
  male,
  female,
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Maletype gender=Maletype.male;
  int height =180;
  int wight=60;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(//male
                  child: ReusbleCard(
                    onPreas: (){
                      setState((){
                        gender=Maletype.male;
                      });
                    },
                    colour: gender==Maletype.male?KActiveCardColor:KinActiveCardColor,
                    continarwidget: genderWiget(icon: FontAwesomeIcons.mars,title: 'MALE',),
                  ),
                ),
                Expanded(//female
                  child: ReusbleCard(
                    onPreas: (){
                      setState((){
                        gender=Maletype.female;
                      });
                    },
                    colour: gender==Maletype.female?KActiveCardColor:KinActiveCardColor,
                    continarwidget: genderWiget(icon: FontAwesomeIcons.venus,title: 'FEMALE',),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusbleCard(
              continarwidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HIEGHT',
                  style: KlibleTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(),
                      style: KNumbersStyle
                      ),
                      Text('cm',
                      style: KlibleTextStyle,),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newvalue){
                          setState((){
                            height=newvalue.round();
                          });
                        }
                    ),
                  ),
                ],
              ),
              onPreas: (){},
              colour: KActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ReusbleCard(
                    continarwidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WIGHT',
                        style: KlibleTextStyle,),
                        Text(
                          wight.toString(),
                          style: KNumbersStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyFloatingBottn(
                                onPreased: (){
                                  setState((){
                                    wight--;
                                  });
                                },
                                icon:FontAwesomeIcons.minus
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MyFloatingBottn(
                                onPreased: (){
                                  setState((){
                                    wight++;
                                  });
                                },
                                icon:FontAwesomeIcons.plus
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPreas: (){},
                    colour: KActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusbleCard(
                    continarwidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                          style: KlibleTextStyle,),
                        Text(
                          age.toString(),
                          style: KNumbersStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyFloatingBottn(
                                onPreased: (){
                                  setState((){
                                    age--;
                                  });
                                },
                                icon:FontAwesomeIcons.minus
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MyFloatingBottn(
                                onPreased: (){
                                  setState((){
                                    age++;
                                  });
                                },
                                icon:FontAwesomeIcons.plus
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPreas: (){},
                    colour: KActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          BottemCalculate(
                onTap:   () {
                  calculater calc=calculater(wight: wight.toDouble(), height: height.toDouble());

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return ResultPage(
                          bmi_num: calc.getBMI_NUM(),
                          bmi_string: calc.getBMI_String(),
                          bmi_tip: calc.getTps(),
                        );
                      }
                      )
                  );
                },
            text: 'CALCULATOR',
          ),
        ],
      ),
    );
  }
}





