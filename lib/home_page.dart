import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quizz/class/add_icon.dart';
import 'package:quizz/class/quizz_brain.dart';
import 'package:quizz/theme/theme_app.dart';
import 'package:quizz/widgets/buttons_widget.dart';
import 'package:quizz/widgets/question_widget.dart';


class HomePage  extends StatefulWidget {
  const HomePage ({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  QuizBrain user = QuizBrain();
  AddIcon functions = AddIcon();
  void addIcon(bool value,BuildContext context){
    setState(() {
      bool resultCorrect = user.getQuestionAnswer(); 
      functions.addIcon(resultCorrect, value);
      if(user.questionNumber == 9){
        showDialog(
          barrierDismissible: false,
          context: context, 
          builder: ( context ) {
            return AlertDialog(
              backgroundColor: ThemeApp.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
              title: Text("Your score was:",style: Theme.of(context).textTheme.headline1,),
              content: Text("${functions.countCorrect}/${user.countLengthList()}",textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline3,),
              actions: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      functions.countCorrect = 0;
                      user.questionNumber = 0;
                      Navigator.pop(context);
      
                    });
                    }, 
                  style: TextButton.styleFrom(
                    backgroundColor: ThemeApp.gray,
                    foregroundColor: ThemeApp.white,
                    padding: const EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))
                  ),
                  child: Text("Try again",style: Theme.of(context).textTheme.subtitle1,)
                )
              ],
            );
          }
        );
      }else{
        user.nextQuestion();
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
            ButtonsWidget(colorButton: ThemeApp.blue, addIcon: addIcon, valueCompare: true,),
            const SizedBox(height: 5.0,),
            ButtonsWidget(colorButton: ThemeApp.gray,addIcon: addIcon, valueCompare: false,),
            const SizedBox(height: 150.0,),
          ],
        ),
      )
    );
  }
}