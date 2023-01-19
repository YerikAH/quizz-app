import 'package:flutter/material.dart';
import 'package:quizz/class/quizz_brain.dart';

class QuestionWidget  extends StatelessWidget {
  final QuizBrain user;
  const QuestionWidget ({Key? key, required this.user}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "question ${user.nextQuestion()} of ${user.countLengthList()}",
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline2,
          ),

          Text(
            user.getQuestionText(),
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      ),
    );
  }
}