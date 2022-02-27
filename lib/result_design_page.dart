
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

class ResultDesign extends StatelessWidget {

ResultDesign({required this.Result, required this.ResultText , required this.Interpretation});
  final String Result;
  final String ResultText;
  final String Interpretation;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Center(
            child: Text("YOUR RESULT",
              style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    color: Color(0xFF7B7A94),
                    borderRadius: BorderRadius.circular(18.0)
                ),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(ResultText, style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.green[900]
                      ),),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Center(
                      child: Text(Result,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 120.0,
                          color: Color(0xFFEB1555)
                      ),),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Center(
                      child: Text(Interpretation,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white30
                      ),),
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFEB1555),
                  borderRadius: BorderRadius.circular(18.0)
              ),
              child: Center(
                  child: Text("RE-CALCULATE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0
                    ),
                  )
              ),
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              height: 50.0,
            ),
          )
        ],
      ),
    );
  }
}
