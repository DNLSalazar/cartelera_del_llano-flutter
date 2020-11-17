import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Pantalla principal'),
      // ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor,
              Color(0xFF6E8A00),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/arco-fondo.png'),
            fit: BoxFit.fitWidth,
            centerSlice: Rect.fromLTRB(0, 0, 0, 0),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2),
              BlendMode.srcIn,
            ),
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0),
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
