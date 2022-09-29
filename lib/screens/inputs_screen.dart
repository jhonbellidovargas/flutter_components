import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'firstName': '',
      'lastName': '',
      'email': '',
      'password': '',
      'role': 'Admin',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Formularios'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Ingresa tu nombre',
                  formProperty: 'firstName',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Ingresa tu apellido',
                  formProperty: 'lastName',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Ingresa tu correo',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Ingresa tu contraseña',
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  value: formValues['role'],
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'SuperAdmin',
                      child: Text('SuperAdmin'),
                    ),
                    DropdownMenuItem(
                      value: 'User',
                      child: Text('User'),
                    )
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'admin';
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    } else {
                      print('Formulario válido');
                      print(formValues);
                    }
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
