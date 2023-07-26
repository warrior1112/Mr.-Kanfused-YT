import 'package:flutter/material.dart';

import 'Color schemes/color_schemes.g.dart';
import 'Screens/login_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      textTheme: TextTheme(titleLarge: TextStyle(fontSize: 51)),
    ),
    darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
    home: LoginScreen(),
  ));
}
