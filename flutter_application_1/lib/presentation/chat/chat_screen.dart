import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://preview.redd.it/3l9eq5e6a4o81.jpg?auto=webp&s=278fa3efd6eb30311834e533c443f13eb02898d5'),
          ),
        ),
        title: Text('Bicholover'),
        centerTitle: false,
      ),
    );
  }
}