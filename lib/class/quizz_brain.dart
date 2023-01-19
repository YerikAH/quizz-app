import 'package:quizz/class/question.dart';

class QuizBrain {
  final List<Question> _question =[
    Question(questionText: "Is gravity an electromagnetic force?",questionAnswer:false, pathImage: 'assets/gravity.png'),
    Question(questionText: "Is the theory of special relativity a consequence of the theory of general relativity?",questionAnswer:false, pathImage: 'assets/relativity.png'),
    Question(questionText: "Is dark matter composed mainly of neutrinos?",questionAnswer:false, pathImage: 'assets/neu.png'),
    Question(questionText: "Is the speed of light constant in all reference frames?",questionAnswer:true, pathImage: 'assets/light.png'),
    Question(questionText: "Is quantum physics incompatible with classical mechanics?",questionAnswer:true, pathImage: 'assets/cuan.png'),
    Question(questionText: "Is the universe finite and does it have an edge?",questionAnswer:false, pathImage: 'assets/universe.png'),
    Question(questionText: "Is gravity the only force responsible for the formation of galaxies?",questionAnswer:false, pathImage: 'assets/galaxy.png'),
    Question(questionText: "Are black holes regions of space where gravity is so strong that nothing can escape?",questionAnswer:true, pathImage: 'assets/hole_black.png'),
    Question(questionText: "Is light a mechanical wave?",questionAnswer:false, pathImage: 'assets/light_two.png'),
    Question(questionText: "Is quantum physics only relevant at the subatomic level?",questionAnswer:false, pathImage: 'assets/cuant.png'),
  ];
  int questionNumber = 0;
  String getQuestionText(){
    return _question[questionNumber].questionText;
  }
  bool getQuestionAnswer(){
    return _question[questionNumber].questionAnswer;
  }
  String getQuestionImage(){
    return _question[questionNumber].pathImage;
  }
  void nextQuestion(){
    questionNumber = questionNumber + 1;
  }
  int countLengthList(){
    return _question.length;
  }
}

  