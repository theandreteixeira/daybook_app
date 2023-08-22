import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daybook'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('Bem vindo ao Daybook'),
      ),
    );
  }
}
