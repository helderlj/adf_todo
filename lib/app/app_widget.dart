import 'package:adf_todo_list/app/core/database/sqlite_admin_connection.dart';
import 'package:adf_todo_list/app/core/ui/todo_list_ui_config.dart';
import 'package:adf_todo_list/app/modules/auth/auth_module.dart';
import 'package:adf_todo_list/app/modules/auth/login/login_page.dart';
import 'package:adf_todo_list/app/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqliteAdmConnection = SqliteAdminConnection();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(sqliteAdmConnection);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(sqliteAdmConnection);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: TodoListUiConfig.theme,
      routes: {
        ...AuthModule().routes,
      },
      initialRoute: '/login',
    );
  }
}
