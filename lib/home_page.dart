import 'package:flutter/material.dart';
import 'package:quizz/class/add_icon.dart';
import 'package:quizz/class/quizz_brain.dart';
import 'package:quizz/theme/theme_app.dart';
import 'package:quizz/widgets/buttons_widget.dart';
import 'package:quizz/widgets/question_widget.dart';


class HomePage  extends StatefulWidget {
  HomePage ({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> scoreKeep =  [
  ];
  QuizBrain user = QuizBrain();
  AddIcon functions = AddIcon();
  void addIcon(bool value){
    setState(() {
      bool resultCorrect = user.getQuestionAnswer(); 
      functions.addIcon(resultCorrect, value, scoreKeep);
      user.nextQuestion();
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          QuestionWidget(user: user),
          const SizedBox(height: 30.0,),
          ButtonsWidget(colorButton: ThemeApp.blue, textButton: "True", addIcon: addIcon, valueCompare: true,),
          const SizedBox(height: 5.0,),
          ButtonsWidget(colorButton: ThemeApp.gray, textButton: "False", addIcon: addIcon, valueCompare: false),
          // Row(
          //   children: scoreKeep
          // )
        ],
      )
    );
  }
}