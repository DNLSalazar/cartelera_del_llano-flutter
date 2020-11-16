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
        primarySwatch: Colors.orange,
        primaryColorBrightness: Brightness.dark,
      ),
      home: MainScreen(),
    );
  }
}
