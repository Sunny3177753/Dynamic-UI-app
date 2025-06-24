import 'package:flutter/material.dart';
import 'multiple_tabs.dart';
import 'splash_screen.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();

  ///splash Screen
  runApp(MaterialApp(home : const SplashScreen(),debugShowCheckedModeBanner: false,));
  await Future.delayed(const Duration(seconds: 3));

  ///running main UI after delay of 3 seconds
  runApp(DynamicUIApp());
}

class DynamicUIApp extends StatefulWidget {
  const DynamicUIApp({super.key});

  @override
  State<DynamicUIApp> createState() => _DynamicUIAppState();
}

class _DynamicUIAppState extends State<DynamicUIApp> {

  ///variable
  bool isDark = true;

  ///function for toggling the theme
  void toggleTheme(){
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {



    return MaterialApp(

      ///light theme
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.purple[200],
        textTheme: TextTheme(titleMedium: TextStyle(color: Colors.black)),
        appBarTheme: AppBarTheme(color: Colors.purple)
      ),

      ///dark theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(titleMedium: TextStyle(color: Colors.white)),
          // appBarTheme: AppBarTheme(color: Colors.purple)
      ),

      home: MultipleTabs(isDark: isDark,toggleTheme: toggleTheme,),

      ///Switching theme(dark or light)
      themeMode: !isDark? ThemeMode.dark : ThemeMode.light,
    );
  }
}
