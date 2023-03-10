import 'package:flutter/material.dart';
import 'package:quizz/class/quizz_brain.dart';

class QuestionWidget  extends StatelessWidget {
  final QuizBrain user;
  const QuestionWidget ({Key? key, required this.user}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Container(
            width: 125.0,
            height: 125.0,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(user.getQuestionImage())),
            ),
          ),
          const SizedBox(height: 50.0,),
          Text(
            "question ${user.questionNumber + 1} of ${user.countLengthList()}",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 10.0,),
          Text(
            user.getQuestionText(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      ),
    );
  }
}