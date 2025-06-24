import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorChangeCounter extends StatefulWidget{
  const ColorChangeCounter({super.key});

  @override
  State<ColorChangeCounter> createState() => _ColorChangeCounterState();
}

class _ColorChangeCounterState extends State<ColorChangeCounter>{

  ///variables
  double height = 300;
  double width = 400;
  Color backgroundColor = Colors.purple;
  // BoxShape shape = BoxShape.rectangle;


  ///function for changing the color of Container
  void changeColor(){
    final random = Random();
    setState(() {
      backgroundColor = Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256)
      );
    });
  }

  ///function for changing the size of Container
  void changeSize(){
    final random = Random();
    setState(() {
      height = 100 + random.nextInt(301).toDouble();
      width = 100 + random.nextInt(401).toDouble();
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: const Text(
          "Randomly changing the Size and Color",
          style: TextStyle(
            fontFamily: "Stylish",
            fontSize: 25,
            fontWeight: FontWeight.w500
          ),
        )
      ),
      body: GestureDetector(

        ///performing operation on single tap
        onTap: (){
          changeColor();
          changeSize();
        },

        child: Center(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              // shape : BoxShape.circle,
              color: backgroundColor,
            ),

            child: Center(

              child: Text(
                  "Click me",
                  style: GoogleFonts.aBeeZee(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.tealAccent
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}

