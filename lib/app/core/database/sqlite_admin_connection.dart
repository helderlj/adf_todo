import 'package:adf_todo_list/app/core/database/sqlite_connection_factory.dart';
import 'package:flutter/material.dart';

class SqliteAdminConnection with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final connection = SqliteConnectionFactory();

    switch (state) {
      case AppLifecycleState.resumed:
        break;
      case AppLifecycleState.detached:
      case AppLifecycleState.inactive:
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        connection.closeConnection();
        // TODO: Handle this case.
        break;
    }

    super.didChangeAppLifecycleState(state);
  }
}
