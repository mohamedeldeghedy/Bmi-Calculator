import 'dart:math';
import 'package:flutter/material.dart';
import '../bmi_result/BMIRESULT.dart';

class BMICalc extends StatefulWidget {
  @override
  State<BMICalc> createState() => _BMICalcState();
}

class _BMICalcState extends State<BMICalc> {
  bool isMale =true;
  bool height =false;
  double ballSlider =120;
  int ageNum=15;
  int weightNum=50;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        titleSpacing: 20.0,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap:()
                    {
                      setState(()
                          {
                            isMale=true;
                          });
                    } ,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/images/male.png'),
                            height:80 ,
                            width:90 ,

                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: isMale? Colors.blue : Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap:()
                    {
                      setState(()
                      {
                        isMale=false;
                      });
                    }
                    ,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Image(image: AssetImage('assets/images/female.png'),
                           height:80 ,
                           width:90 ,

                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: !isMale? Colors.blue : Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                )
              ],
            ),
          )),//MALE&FEMALE
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onDoubleTap:
              ()
              {
                setState(()
                {
                  height=false;
                });
              },
              onTap:
              ()
              {
                setState(()
                {
                height=true;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: height? Colors.blue: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT', style: TextStyle(fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${ballSlider.round()}',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        Text(
                          'CM',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                    Slider(
                      activeColor: Colors.black,
                      inactiveColor: Colors.black,
                      value: ballSlider,
                      onChanged: (value) {
                        setState(()
                        {
                          ballSlider=value;

                        });

                      },
                      min: 0,
                      max: 300,
                    )
                  ],
                ),
              ),
            ),
          )),//SLIDER
          Expanded(

            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(10)),

                      child: Column(mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text('AGE',style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold
                          )),
                          SizedBox(height: 10,),
                          Text('${ageNum}',style: TextStyle(
                            fontSize: 20
                          )),
                          Row(mainAxisAlignment:MainAxisAlignment.center ,
                            children: [

                              CircleAvatar(radius: 28,

                                backgroundColor: Colors.black,
                                child: IconButton(onPressed:()
                                {
                                  setState(()
                                  {
                                    ageNum--;
                                  });
                                } ,icon:Icon(Icons.remove,color: Colors.white,)  ),

                              ),
                              SizedBox(width: 10,),
                              CircleAvatar(radius: 28,

                                backgroundColor: Colors.black,
                                child: IconButton(onPressed:()
                                {
                                  setState(()
                                  {
                                    ageNum++;
                                  });
                                } ,icon:Icon(Icons.add,color: Colors.white,)  ),

                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20,top: 20,right: 20),
                    child: Container(decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(10)),

                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT',style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold
                          )),
                          SizedBox(height: 10,),
                          Text('${weightNum}',style: TextStyle(
                            fontSize: 20
                          )),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              CircleAvatar(radius: 28,

                                backgroundColor: Colors.black,
                                child: IconButton(onPressed:()
                                {
                                  setState(()
                                  {
                                    weightNum--;
                                  });
                                } ,icon:Icon(Icons.remove,color: Colors.white,)  ),

                              ),
                              SizedBox(width: 10,),
                              CircleAvatar(radius: 28,

                                backgroundColor: Colors.black,
                                child: IconButton(onPressed:()
                                {
                                  setState(()
                                  {
                                    weightNum++;
                                  });
                                } ,icon:Icon(Icons.add,color: Colors.white,)  ),

                              ),




                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              )
              ,
              width: double.infinity,
              
              child: MaterialButton(

                onPressed: ()
                {
                  var result= weightNum/ pow(ballSlider/100,2);
                 Navigator.push(context,
                     MaterialPageRoute(
                         builder: (context)=>BmiResult(
                           result: result.round(),
                           isMale: isMale ,
                           age:ageNum ,
                           weight: weightNum,
                           height: ballSlider,
                         )

                         )

                 );
                },
                child: Text('CALCULATE',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
