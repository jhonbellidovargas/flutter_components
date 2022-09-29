import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon,
    this.icon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'El campo no puede estar vacío';
        }
        return value.length < 3 ? 'Mínimo 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // counterText: '3 caracteres',
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        // prefixIcon: Icon(Icons.account_circle_outlined),
        icon: icon == null ? null : Icon(icon),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.indigo, width: 2.0),
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(10.0),
        //   ),
        // ),
      ),
    );
  }
}
