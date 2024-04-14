import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoListUiConfig {
  TodoListUiConfig._();

  static ThemeData get theme => ThemeData(
        textTheme: GoogleFonts.mandaliTextTheme(),
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF5C77CE),
        primaryColorLight: Color(0xFFABC8F7),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF5C77CE),
            foregroundColor: Colors.white,
          ),
        ),
      );
}
