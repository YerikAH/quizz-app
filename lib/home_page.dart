import 'dart:ui';
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
      if(user.questionNumber == 9){
        print("This is the end");
      }else{
        user.nextQuestion();
      }
      print(user.questionNumber);
      print(user.countLengthList());
    });
  }
  void displayDialogAndroid(BuildContext context, bool value) {
    showDialog(
      context: context, 
      builder: ( context ) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
          child: Container(),
        );
      }
    );
    Future.delayed(const Duration(milliseconds: 300), () {
      Navigator.pop(context);
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            const SizedBox(height: 150.0,),
            QuestionWidget(user: user),
            const SizedBox(height: 30.0,),
            ButtonsWidget(colorButton: ThemeApp.blue, addIcon: addIcon, valueCompare: true, modal: displayDialogAndroid,),
            const SizedBox(height: 5.0,),
            ButtonsWidget(colorButton: ThemeApp.gray,addIcon: addIcon, valueCompare: false, modal: displayDialogAndroid,),
            const SizedBox(height: 150.0,),
          ],
        ),
      )
    );
  }
}