import 'package:flutter/material.dart';

class StylishFont extends StatefulWidget {
  const StylishFont({super.key});

  @override
  State<StylishFont> createState() => _StylishFontState();
}

class _StylishFontState extends State<StylishFont> {

  ///variables
  double fontSize = 50;
  bool isGrowing = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        centerTitle: true,
        title: Text("Increasing and decreasing size"),
      ),
      body: GestureDetector(

        onTap: (){
          sizeChanger();
        },

        child: Center(
          child: Text(
            "Click",
            style: TextStyle(
              fontFamily: "Stylish",
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }


  ///function for grow/decrease size of the Stylish text.
  void sizeChanger() {
    int max = 200;
    int min = 30;
    setState(() {
      if(isGrowing){
        fontSize += 10;
        if(fontSize >= max) {
          isGrowing = false;
        }
      }else{
        fontSize -= 10;
        if(fontSize <= min) {
          isGrowing = true;
        }
      }
    });

  }
}


