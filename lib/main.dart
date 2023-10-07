import 'package:app/modules/auth/signup/ui/page/signup_gender_page.dart';
import 'package:app/modules/auth/signup/ui/page/signup_username_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duulo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         fontFamily: "Montserrat",
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 0,
          indicatorColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home:SignupUsernamePage(),
    );
  }
}
