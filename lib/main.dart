import 'package:flutter/material.dart';

void main() {
  runApp(const ClickerApp());
}

class ClickerApp extends StatelessWidget {
  const ClickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clicker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const ClickerPage(),
    );
  }
}

class ClickerPage extends StatelessWidget {
  const ClickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clicker')),
      body: Center(
        child: FilledButton(
          key: const Key('click-button'),
          onPressed: () {},
          child: const Text('Click me'),
        ),
      ),
    );
  }
}
