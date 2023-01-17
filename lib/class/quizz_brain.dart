import 'package:quizz/class/question.dart';

class QuizBrain {
  final List<Question> _question =[
    Question(questionText: "¿La gravedad es una fuerza electromagnética?",questionAnswer:false),
    Question(questionText: "¿La teoría de la relatividad especial es una consecuencia de la teoría de la relatividad general?",questionAnswer:false),
    Question(questionText: "¿La materia oscura es compuesta principalmente de neutrinos?",questionAnswer:false),
    Question(questionText: "¿La velocidad de la luz es constante en todos los sistemas de referencia?",questionAnswer:true),
    Question(questionText: "¿La física cuántica es incompatible con la mecánica clásica?",questionAnswer:true),
    Question(questionText: "¿El universo es finito y tiene un borde?",questionAnswer:false),
    Question(questionText: "¿La gravedad es la única fuerza responsable de la formación de galaxias?",questionAnswer:false),
    Question(questionText: "¿Los agujeros negros son regiones del espacio donde la gravedad es tan fuerte que nada puede escapar?",questionAnswer:true),
    Question(questionText: "¿La luz es una onda mecánica?",questionAnswer:false),
    Question(questionText: "¿La física cuántica es solo relevante a nivel subatómico?",questionAnswer:false),
  ];
  int questionNumber = 0;
  String getQuestionText(){
    return _question[questionNumber].questionText;
  }
  bool getQuestionAnswer(){
    return _question[questionNumber].questionAnswer;
  }
  void nextQuestion(){
    questionNumber++;
  }
}

  