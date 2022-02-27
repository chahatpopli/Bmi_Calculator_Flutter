import 'package:bmi_calculator/result_design_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculate.dart';


const inactiveCardsColor = Color(0xFF7B7A94);
const activeCardsColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveCardsColor;
  Color femaleColor =inactiveCardsColor;
  int height = 180;
  int weight = 40;
  int age = 15;


void updateColor(int gender){
  if(gender == 1){
    if(maleColor == inactiveCardsColor){
      maleColor=activeCardsColor;
      femaleColor=inactiveCardsColor;
    }

  }else if(gender == 2){
    if(femaleColor == inactiveCardsColor){
      femaleColor=activeCardsColor;
      maleColor=inactiveCardsColor;
    }

  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: Row(
              children: [
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ResuableCard(colour: maleColor, cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.mars , size: 80.0,),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text("MALE", style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                    ],
                  ),
                  ),
                ),
                ),
                Expanded( child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: ResuableCard( colour: femaleColor,cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.venus , size: 80.0,),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text("FEMALE", style: TextStyle(
                          color: Colors.white
                      ),
                      ),
                    ],
                  ),),
                ),)
              ],
            )),
            Expanded(child: Row(
              children: [
                Expanded(child: ResuableCard(colour: inactiveCardsColor,cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT", style : TextStyle(
                        color: Colors.white,
                      fontSize: 38.0,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(height.toString(),style : TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold
                        ),),
                        Text("cm",style : TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                        ),),
                      ],
                    ),
                    Slider(value: height.toDouble(),
                        min:150.0,
                        max:300.0,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue){
                          setState(() {
                            height=newValue.round();
                          });
                    })
                  ],
                ),))
              ],
            )),
            Expanded(child: Row(
              children: [
                Expanded(child: ResuableCard(colour: inactiveCardsColor,cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("WEIGHT", style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(weight.toString(), style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                            backgroundColor: Colors.grey,
                            child: Icon(FontAwesomeIcons.minus),
                            onPressed: (){
                             setState(() {
                               weight--;
                             });
                            }),
                        SizedBox(width: 10.0,),
                        FloatingActionButton(
                            backgroundColor: Colors.grey,
                            child: Icon(FontAwesomeIcons.plus),
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            })
                      ],
                    )

                  ],
                ),)),
                Expanded(child: ResuableCard(colour: inactiveCardsColor,cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("AGE", style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                    Text(age.toString(), style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                            backgroundColor: Colors.grey,
                            child: Icon(FontAwesomeIcons.minus),
                            onPressed: (){
                              setState(() {
                                age--;
                              });
                            }),
                        SizedBox(width: 10.0,),
                        FloatingActionButton(
                            backgroundColor: Colors.grey,
                            child: Icon(FontAwesomeIcons.plus),
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            })
                      ],
                    )

                  ],
                ),)),
              ],
            )),
            GestureDetector(
              onTap: (){
                CalculateBrain calc = CalculateBrain(height: height , weight: weight);

                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultDesign(
                  Result: calc.Calc(),
                  ResultText: calc.CalcResult(),
                  Interpretation: calc.CalcIntre(),
                ),
                ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFEB1555),
                    borderRadius: BorderRadius.circular(18.0)
                ),
                child: Center(
                  child: Text("CALCULATE",
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
      ),
    );
  }
}

class ResuableCard extends StatelessWidget {
  ResuableCard({required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(18.0)
      ),
    );
  }
}
