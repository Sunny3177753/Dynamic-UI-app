import 'dart:math';
import 'package:flutter/material.dart';

class ShapeChanger extends StatefulWidget{
  const ShapeChanger({super.key});

  @override
  State<ShapeChanger> createState() => _ShapeChangerState();
}

class _ShapeChangerState extends State<ShapeChanger>{

  ///variables
  double border = 0;
  double width = 200;



  ///function for changing the size of Container
   void changeShape(){
      final random = Random();
      setState(() {
        border = random.nextInt(101).toDouble();
        width = 200+random.nextInt(200).toDouble();
      });
    }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple[400],
          title: const Text(
            "Click on Below Shape",
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
          changeShape();
        },

        child: Center(
          child: Container(
            height: 250,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(border),
              color: Colors.tealAccent,
            ),
          ),
        ),
      ),
    );
  }
}

