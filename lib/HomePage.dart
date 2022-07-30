import 'package:flutter/material.dart';
import 'package:neon/neon.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool ispressed = false;
  @override
  Widget build(BuildContext context) {
return Scaffold(
     backgroundColor: Colors.black,
     body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                ispressed = !ispressed;
              });
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                boxShadow: [
                  ispressed 
                  ?
                  BoxShadow(
                    color: Colors.blue.withAlpha(225),
                    blurRadius: 45,
                    spreadRadius: 15,
                    offset: Offset(0,0),
                  )
                  :BoxShadow(),
                ],
                gradient: LinearGradient(
                  colors :[
                   Color(0xFFFF1000),
                   Color(0xFF2508FF),

                  ],begin: Alignment.centerRight,end: Alignment.centerLeft
                ),
                borderRadius: BorderRadius.circular(15),


              ),

              child: Center(
                child: Text(
                  "Neon Light",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),

            ),
            
          ),
          SizedBox(
            height: 75,
          ),
          SizedBox(
            height: 75,
          ),
          Neon(
            text:'Hello World',
            color: Colors.blue,
            fontSize: 35,
            font: NeonFont.Beon,
            flickeringText: true,
            flickeringLetters: null,
            glowingDuration: new Duration(seconds: 1),

          )
        ],

      ),
     ),
);
    
  }
}
