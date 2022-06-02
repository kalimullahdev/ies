import 'package:flutter/material.dart';
import 'package:ies/presentation/screens/signin/signin.dart';
import 'package:ies/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const SigninScreen(),
    );
  }
}
