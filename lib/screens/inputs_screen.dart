import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firs_name': 'Antonio',
      'last_name': 'Rocha',
      'email': 'antonio@google.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomInputField(labelText: 'Nombre', hintText: 'Nombre'),
                const SizedBox(height: 30),

                const CustomInputField(labelText: 'Apellido', hintText: 'Apellido'),
                const SizedBox(height: 30),

                const CustomInputField(labelText: 'Correo', hintText: 'Correo', keyBoardType: TextInputType.emailAddress),
                const SizedBox(height: 30),

                const CustomInputField(labelText: 'Contraseña', hintText: '*****', obscureText: true),
                const SizedBox(height: 30),

                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                  ),
                  onPressed: () {

                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    }
                    //* imprimir valores del formulario
                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
