import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmi_calcluter/compnents/reusbleCard.dart';
import '../compnents/bottem_calculate.dart';

class ResultPage extends StatelessWidget {

    ResultPage({required this.bmi_num,required this.bmi_string,required this.bmi_tip});
    final String bmi_num;
    final  String bmi_string;
    final String bmi_tip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft ,
              child: Text('Your Result',
              style: KTitleResultPageText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusbleCard(
                onPreas: (){},
                colour: KActiveCardColor,
                continarwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        bmi_string,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color(0xFF24D876),
                      ),
                    ),

                    Text(
                      bmi_num,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 100,
                      ),
                    ),

                    Text(
                      bmi_tip,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
          ),
          Expanded(
              child: BottemCalculate(
                onTap: (){
                  Navigator.pop(context);
                },
                text: 'RE-CALCULATOR',
              )
          )
        ],
      ),
    );
  }
}
