import 'package:bmi_calaculator/constants.dart';
import 'package:bmi_calaculator/components/reusable_code.dart';
import 'package:flutter/material.dart';
import '../components/buttons.dart';



class ResultPage extends StatelessWidget {
  
  // ignore: use_key_in_widget_constructors
   ResultPage({required this.bmiResult, required this.bmiCal, required this.bmiInter});

  final String bmiResult;
  final String bmiCal;
  final String bmiInter;

 


  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Your Result',
                style: KnumberText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCode(
              colour: KactiveCodeColor,
              cardChild:  Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiResult.toUpperCase(),
                    style: KresultStyleGreen ,
                  ),
                  Text(
                    bmiCal,
                    style: KResultnumber,
                  ),
                  Text(
                    bmiInter,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          BottomButton(onTap:() {
            Navigator.pop(context);
          }, buttonText: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
