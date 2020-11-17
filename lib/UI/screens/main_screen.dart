import 'package:cartelera_del_llano/UI/components/list_songs.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('TOP 10'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListSongs(),
          ),
        ],
      ),
    );
  }
}
