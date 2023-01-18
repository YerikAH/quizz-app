import 'package:flutter/material.dart';
import 'package:quizz/class/add_icon.dart';
import 'package:quizz/class/quizz_brain.dart';
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff001d3d),
      body: ListView(
        children:  [
          QuestionWidget(user: user),

          const SizedBox(height: 15.0,),
          ButtonsWidget(colorButton: Colors.blue, textButton: "True", addIcon: addIcon, valueCompare: true,),
          ButtonsWidget(colorButton: Colors.red, textButton: "False", addIcon: addIcon, valueCompare: false),

          Row(
            children: scoreKeep
          )
        ],
      )
    );
  }
}