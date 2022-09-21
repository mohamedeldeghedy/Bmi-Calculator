import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
  final int weight;
  final double height;



  BmiResult({
    required this.result,
    required this.age,
    required this.isMale,
    required this.weight, 
    required this.height
    
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
          const Text('BMI RESULT'),
        ),
        body:
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[500],

                  borderRadius: BorderRadius.circular(20)
              ),
              height: 500,
              child: Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,

                  children:
                  [
                    Text('GENDER :${isMale ? 'MALE': 'FEMALE'}',
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 10,
                    ),

                    Text('Height :$height',
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 10,
                    ),


                    Text('Weight :$weight',
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 10,
                    ),

                    Text('AGE :$age',
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text('The best age : $result',
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    
                    
                  ],
                ),
              ),
            ),
          ),
        )

    );
  }
}
