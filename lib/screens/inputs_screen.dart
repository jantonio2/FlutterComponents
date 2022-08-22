import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomInputField(labelText: 'Nombre', hintText: 'Nombre'),
              SizedBox(height: 30),

              CustomInputField(labelText: 'Apellido', hintText: 'Apellido'),
              SizedBox(height: 30),

              CustomInputField(labelText: 'Correo', hintText: 'Correo', keyBoardType: TextInputType.emailAddress),
              SizedBox(height: 30),

              CustomInputField(labelText: 'Contraseña', hintText: '*****', obscureText: true),
              SizedBox(height: 30),
            ],
          ),
        ),
      )
    );
  }
}
