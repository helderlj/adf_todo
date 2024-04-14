import 'package:flutter/material.dart';
import 'package:adf_todo_list/app/core/ui/theme_extensions.dart';

class TodoListLogo extends StatelessWidget {
  const TodoListLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/logo.png',
          height: 200,
        ),
        Text(
          'Todo List',
          style: context.textTheme.headlineLarge,
        ),
      ],
    );
  }
}
