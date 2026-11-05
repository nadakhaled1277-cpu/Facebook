import 'package:facebook_task/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'core/app_theme.dart';

void main() {
  runApp(const FacebookApp());
}

class FacebookApp extends StatelessWidget {
  const FacebookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',
      theme: AppTheme.light,
      home: const LoginScreen(),
    );
  }
}
