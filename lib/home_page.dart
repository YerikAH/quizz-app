import 'package:flutter/material.dart';
import 'package:quizz/class/quizz_brain.dart';


class HomePage  extends StatefulWidget {
  HomePage ({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> scoreKeep =  [
    Icon(Icons.check, color: Colors.green,),
  ];
  QuizBrain user = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff001d3d),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [
          
          Expanded(
            flex: 9,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  user.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 22.2, color: Colors.white),
                  
                ),
              )
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: (){
                setState(() {
                  bool resultCorrect = user.getQuestionAnswer(); 
                  if(resultCorrect == true){
                    scoreKeep.add(
                      const Icon(Icons.check, color: Colors.green,), 
                    );
                  }else{
                    scoreKeep.add(
                      const Icon(Icons.close, color: Colors.red,), 
                    );
                  }
                });
                user.nextQuestion();
              }, 
              color: const Color(0xff00b4d8),
              child: const Text("Verdadero"),
            )
          ),

          const SizedBox(height: 15.0,),
          Expanded(
            child: MaterialButton(
              onPressed: (){
                setState(() {
                  bool resultCorrect = user.getQuestionAnswer(); 
                  if(resultCorrect == false){
                    scoreKeep.add(
                      const Icon(Icons.check, color: Colors.green,), 
                    );
                  }else{
                    scoreKeep.add(
                      const Icon(Icons.close, color: Colors.red,), 
                    );
                  }
                });
                user.nextQuestion();
              }, 
              color:const Color(0xffef476f),
              child:  const Text("Falso"),
            )
          ),
          Row(
            children: scoreKeep
          )
        ],
      )
    );
  }
}