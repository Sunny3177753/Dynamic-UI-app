import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(image: AssetImage("asset/splash.jpg")
                )
              ),
            ),

            const SizedBox(height: 20),

            Text(
                "WELCOME, USER",
                style: GoogleFonts.aladin(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 4.0
                )
            ),
          ],
        )
      )
    );
  }
}
