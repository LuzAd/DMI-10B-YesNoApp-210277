import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/chat/chat_screen.dart';
import 'config/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes - No App 210277',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 7).theme(),
      home: ChatScreen()
    );
  }
}
