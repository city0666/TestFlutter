import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.StartQuiz, {super.key});

  final void Function() StartQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-5.png',
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Kanexy private limited',
            style: TextStyle(
                color: Color.fromARGB(255, 237, 223, 252), fontSize: 25),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: () {
                StartQuiz();
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right),
              label: const Text('start learning'))
        ],
      ),
    );
  }
}
