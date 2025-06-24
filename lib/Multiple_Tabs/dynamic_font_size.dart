import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DynamicFontSize extends StatefulWidget {
  const DynamicFontSize({super.key});

  @override
  State<DynamicFontSize> createState() => _DynamicFontSizeState();
}

class _DynamicFontSizeState extends State<DynamicFontSize> {

  ///variables
  double _dynamicText = 30;
  Color textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        centerTitle: true,
        title: Text(
          "Tap on Click",
          style: GoogleFonts.aladin(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        )
      ),

      body: SizedBox(
        child: Center(
          child: GestureDetector(

            onTap: (){
              changeSize();
              changeColor();
            },

            child: Center(
              child: Text(
                  "click",
                  style: GoogleFonts.aladin(fontSize: _dynamicText,
                      fontWeight: FontWeight.w500,
                      color: textColor
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }


  ///function for changing the size of the text
  void changeSize(){
    Random random = Random();
    setState(() {
      _dynamicText = 50 + random.nextInt(200).toDouble();
    });
  }


  ///function for changing the color of text
  void changeColor(){
    Random random = Random();
    setState(() {
      textColor = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }
}
