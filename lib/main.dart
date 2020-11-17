import 'package:flutter/material.dart';
import 'package:cartelera_del_llano/UI/main_screen.dart';

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
        primarySwatch: Colors.orange,
        primaryColorBrightness: Brightness.dark,
        fontFamily: 'Texta',
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Texta',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: MainScreen(),
    );
  }
}
