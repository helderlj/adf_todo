import 'package:adf_todo_list/app/core/ui/components/todo_list_logo.dart';
import 'package:adf_todo_list/app/core/ui/components/todo_list_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Registrar",
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
            Text(
              "Crie sua conta",
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TodoListLogo(),
            const SizedBox(height: 20),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    TodoListTextField(
                      label: "Email",
                    ),
                    const SizedBox(height: 20),
                    TodoListTextField(
                      label: "Senha",
                      isPassword: true,
                    ),
                    const SizedBox(height: 20),
                    TodoListTextField(
                      label: "Confirme a senha",
                      isPassword: true,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 130,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Registrar",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
