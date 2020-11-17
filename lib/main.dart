import 'package:flutter/material.dart';
import 'package:cartelera_del_llano/UI/welcome_screen.dart';

void main() {
  runApp(CarteleraLlanoApp());
}

class CarteleraLlanoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cartelera del llano",
      theme: ThemeData(
        primaryColor: Color(0xFFEF7900),
        accentColor: Color(0xFFFFC900),
        fontFamily: 'Texta',
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Texta',
            fontWeight: FontWeight.w500,
            fontSize: 40,
            color: Colors.white,
            letterSpacing: .1,
          ),
          subtitle1: TextStyle(
            fontFamily: 'Texta',
            fontWeight: FontWeight.w300,
            fontSize: 25,
            color: Colors.white,
            letterSpacing: .1,
          ),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
