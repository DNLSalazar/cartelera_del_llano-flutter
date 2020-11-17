import 'package:cartelera_del_llano/UI/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:cartelera_del_llano/UI/screens/welcome_screen.dart';

void main() {
  runApp(CarteleraLlanoApp());
}

class CarteleraLlanoApp extends StatelessWidget {
  Future<bool> _cargarPantalla() async {
    try {
      await Future.delayed(Duration(seconds: 3));
      return true;
    } catch (err) {
      throw err;
    }
  }

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
          ),
        ),
      ),
      home: FutureBuilder(
        future: _cargarPantalla(),
        builder: (context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.data == null) return WelcomeScreen();

          return MainScreen();
        },
      ),
    );
  }
}
