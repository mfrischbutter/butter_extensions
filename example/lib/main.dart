import 'package:butter_extensions/butter_extensions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExampleScreen(),
    );
  }
}

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              color: Colors.red,
              child: const Text('1'),
            ).paddingAll(15.0),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              color: Colors.blue,
              child: const Text('2'),
            ).paddingAll(15.0),
          ],
        ),
      ),
    );
  }
}
