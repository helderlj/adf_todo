import 'package:adf_todo_list/app/core/ui/components/todo_list_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
                maxWidth: constraints.maxWidth,
              ),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    const TodoListLogo(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Form(
                        child: Column(
                          children: [
                            TextFormField(),
                            const SizedBox(height: 30),
                            TextFormField(),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            child: Text("Esqueceu sua senha"),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 130,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Login"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFEAECF0),
                          border: Border(
                            top: BorderSide(
                              color: Colors.grey.withAlpha(50),
                              width: 3,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            SignInButton(
                              Buttons.Google,
                              text: "Entrar com Google",
                              padding: EdgeInsets.all(10.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              onPressed: () {},
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Não tem uma conta?"),
                                TextButton(
                                  child: Text("Criar Conta"),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
