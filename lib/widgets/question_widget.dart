import 'package:flutter/material.dart';
import 'package:quizz/class/quizz_brain.dart';

class QuestionWidget  extends StatelessWidget {
  final QuizBrain user;
  const QuestionWidget ({Key? key, required this.user}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          user.getQuestionText(),
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 22.2, color: Colors.white),
        ),
      )
    );
  }
}