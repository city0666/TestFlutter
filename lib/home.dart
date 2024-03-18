import 'package:flutter/material.dart';
import 'package:test_flutter/gradient.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text('My First App'),
      // ),
      body:   GradientContainer(
          Color.fromARGB(255, 83, 54, 4),
          Color.fromARGB(255, 199, 151, 73),
           Color.fromARGB(255, 243, 214, 168),
        ),
    );
  }
}
