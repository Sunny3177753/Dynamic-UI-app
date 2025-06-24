import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangeEmoji extends StatefulWidget {
  const ChangeEmoji({super.key});

  @override
  State<ChangeEmoji> createState() => _ChangeEmojiState();
}

class _ChangeEmojiState extends State<ChangeEmoji> {

  int count = 6;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        centerTitle: true,
        title: Text(
            "Click at Center",
          style: GoogleFonts.aladin(
            fontWeight: FontWeight.w500,
            fontSize: 30
          ),
        ),
      ),
      body: GestureDetector(

        onTap: (){
          emojiChanger();
        },

        child: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/emojis/img_${count}.png",),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high
                ),
                shape: BoxShape.circle,color: Colors.purple
            ),
          ),
        ),
      ),
    );
  }

void emojiChanger() {
  Random random = Random();
  setState(() {
    count = random.nextInt(6);
  });
}

}
