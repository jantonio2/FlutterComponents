import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 1'),
      ),
      body: ListView(
        children: const <Widget> [
          Text('Hola Mundo'),
          Text('Hola Mundo'),
          Text('Hola Mundo'),
          Text('Hola Mundo'),
          Text('Hola Mundo'),
        ],
      ),
    );
  }

}