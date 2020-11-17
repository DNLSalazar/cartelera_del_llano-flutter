import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
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
          // image: DecorationImage(
          //   image: AssetImage('assets/images/arco-fondo.png'),
          //   fit: BoxFit.fitWidth,
          //   centerSlice: Rect.fromLTRB(0, 0, 0, 0),
          //   colorFilter: ColorFilter.mode(
          //     Colors.black.withOpacity(0.2),
          //     BlendMode.srcIn,
          //   ),
          //   alignment: Alignment.topCenter,
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40.0),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  overflow: Overflow.clip,
                  children: [
                    Positioned(
                      top: -45,
                      bottom: 10,
                      child: Image.asset('assets/images/arco-fondo3.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50.0, 0, 50.0, 0),
                      child: Image.asset(
                        'assets/images/logo.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 0, 50.0, 0),
              child: Column(
                children: [
                  Text(
                    'Bienvenidos',
                    style: Theme.of(context).textTheme.headline1,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Las 10 más sonadas',
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'del género llanero',
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
                    child: Image.asset('assets/images/corazon-llanero.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(45.0, 15.0, 45.0, 15.0),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
