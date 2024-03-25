import 'package:flutter/material.dart';
import 'package:test_flutter/answer_button.dart';
import 'package:test_flutter/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final CurrentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'the question is',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          Answerbutton(answerText: 'Answer 1', onTap: () {}),
          Answerbutton(answerText: 'Answer 2', onTap: () {}),
          Answerbutton(answerText: 'Answer 3', onTap: () {}),
        ],
      ),
    );
  }
}
