import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Título'),
          shape: RoundedRectangleBorder( borderRadius: BorderRadiusDirectional.circular(10) ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
             onPressed: () => Navigator.pop(context),
             child: const Text('Cancelar'),
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          /*style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            shape: const StadiumBorder(),
            elevation: 0
          ),*/
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
          ),
          onPressed: () => displayDialog(context)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}