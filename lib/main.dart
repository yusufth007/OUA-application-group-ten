import 'package:davetioapp/constants/theme.dart';
import 'package:davetioapp/ui/login_page.dart';
import 'package:davetioapp/ui/signup_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/loginPage" : (context) => LoginPage(),
        "/signupPage" : (context) => SignUpPage(),
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.system,
      home: LoginPage(),
    );
  }
}

