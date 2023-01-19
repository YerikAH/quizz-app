import 'package:quizz/class/question.dart';

class QuizBrain {
  final List<Question> _question =[
    Question(questionText: "Is gravity an electromagnetic force?",questionAnswer:false),
    Question(questionText: "Is the theory of special relativity a consequence of the theory of general relativity?",questionAnswer:false),
    Question(questionText: "Is dark matter composed mainly of neutrinos?",questionAnswer:false),
    Question(questionText: "Is the speed of light constant in all reference frames?",questionAnswer:true),
    Question(questionText: "Is quantum physics incompatible with classical mechanics?",questionAnswer:true),
    Question(questionText: "Is the universe finite and does it have an edge?",questionAnswer:false),
    Question(questionText: "Is gravity the only force responsible for the formation of galaxies?",questionAnswer:false),
    Question(questionText: "Are black holes regions of space where gravity is so strong that nothing can escape?",questionAnswer:true),
    Question(questionText: "Is light a mechanical wave?",questionAnswer:false),
    Question(questionText: "Is quantum physics only relevant at the subatomic level?",questionAnswer:false),
  ];
  int questionNumber = 0;
  String getQuestionText(){
    return _question[questionNumber].questionText;
  }
  bool getQuestionAnswer(){
    return _question[questionNumber].questionAnswer;
  }
  int nextQuestion(){
    questionNumber = questionNumber + 1;
    return questionNumber;
  }
  int countLengthList(){
    return _question.length;
  }
}

  