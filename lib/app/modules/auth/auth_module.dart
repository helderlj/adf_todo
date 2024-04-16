import 'package:adf_todo_list/app/core/modules/todo_list_module.dart';
import 'package:adf_todo_list/app/modules/auth/login/login_controller.dart';
import 'package:adf_todo_list/app/modules/auth/login/login_page.dart';
import 'package:adf_todo_list/app/modules/auth/register/register_controller.dart';
import 'package:adf_todo_list/app/modules/auth/register/register_page.dart';
import 'package:provider/provider.dart';

class AuthModule extends TodoListModule {
  AuthModule()
      : super(
          routes: {
            '/login': (context) => LoginPage(),
            '/register': (context) => RegisterPage(),
          },
          bindings: [
            ChangeNotifierProvider(
              create: (context) => LoginController(),
            ),
            ChangeNotifierProvider(
              create: (context) => RegisterController(),
            ),
          ],
        );
}
