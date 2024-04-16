// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TodoListTextField extends StatelessWidget {
  final String label;
  final bool isPassword;
  final bool obscureText;
  final ValueNotifier<bool> obscureTextNotifier;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  TodoListTextField({
    Key? key,
    required this.label,
    this.isPassword = false,
    this.obscureText = false,
    this.controller,
    this.validator,
  })  : obscureTextNotifier = ValueNotifier(isPassword),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: obscureTextNotifier,
      builder: (context, obscureVN, child) {
        return TextFormField(
          decoration: InputDecoration(
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.red),
            ),
            labelText: label,
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                      obscureVN ? Icons.visibility : Icons.visibility_off,
                      color:
                          obscureVN ? Colors.blue.withAlpha(70) : Colors.grey,
                    ),
                    onPressed: () {
                      obscureTextNotifier.value = !obscureVN;
                    },
                  )
                : null,
          ),
          obscureText: obscureVN,
          controller: controller,
          validator: validator,
        );
      },
    );
  }
}
