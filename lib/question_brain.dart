import 'question.dart';

class QuizBrain {
  int questionNumber = 0;
  final List<Question> questionBank = [
    Question(
      'Which team has won the most UEFA Champions League titles?',
      'A',
      'Real Madrid',
      'AC Milan',
      'Liverpool',
      'Bayern Munich',
    ),
    Question(
      'Who is the all-time leading scorer in the UEFA Champions League?',
      'A',
      'Cristiano Ronaldo',
      'Lionel Messi',
      'Robert Lewandowski',
      'Karim Benzema',
    ),
    Question(
      'Which year was the first UEFA Champions League final held?',
      'C',
      '1954',
      '1955',
      '1956',
      '1957',
    ),
    Question(
      'Which team won the UEFA Champions League in 2022?',
      'A',
      'Real Madrid',
      'Liverpool',
      'Manchester City',
      'Chelsea',
    ),
    Question(
      'Who scored the winning goal for Chelsea in the 2012 UEFA Champions League final?',
      'C',
      'Didier Drogba',
      'Frank Lampard',
      'Fernando Torres',
      'Ramires',
    ),
    Question(
      'Which stadium hosted the 2021 UEFA Champions League final?',
      'B',
      'Wembley Stadium',
      'Estádio do Dragão',
      'Allianz Arena',
      'San Siro',
    ),
    Question(
      'How many teams participate in the group stage of the UEFA Champions League?',
      'B',
      '24',
      '32',
      '36',
      '40',
    ),
    Question(
      'Who won the UEFA Champions League Player of the Season award for 2021?',
      'D',
      'Robert Lewandowski',
      'Kylian Mbappé',
      'Lionel Messi',
      'Jorginho',
    ),
    Question(
      'Which team famously won the Champions League after being 3-0 down at halftime in the 2005 final?',
      'C',
      'AC Milan',
      'Bayern Munich',
      'Liverpool',
      'Barcelona',
    ),
    Question(
      'What is the official anthem of the UEFA Champions League called?',
      'A',
      'Champions League Anthem',
      'The Final Countdown',
      'We Are the Champions',
      'Zadok the Priest',
    ),
    Question(
      'Which player holds the record for the fastest hat-trick in Champions League history?',
      'B',
      'Cristiano Ronaldo',
      'Mohamed Salah',
      'Raheem Sterling',
      'Lionel Messi',
    ),
    Question(
      'How many times has Barcelona won the UEFA Champions League?',
      'C',
      '3',
      '4',
      '5',
      '6',
    ),
    Question(
      'Who was the first manager to win the UEFA Champions League three times?',
      'A',
      'Bob Paisley',
      'Zinedine Zidane',
      'Pep Guardiola',
      'Carlo Ancelotti',
    ),
  ];

  void nextQuestion() {
    if (questionNumber < questionBank.length - 1) {
      questionNumber++;
    }
  }

  String getQuestionText() {
    return questionBank[questionNumber].questionText;
  }

  String getAnswerA() {
    return questionBank[questionNumber].ChooseAnswerA;
  }

  String getAnswerB() {
    return questionBank[questionNumber].ChooseAnswerB;
  }

  String getAnswerC() {
    return questionBank[questionNumber].ChooseAnswerC;
  }

  String getAnswerD() {
    return questionBank[questionNumber].ChooseAnswerD;
  }

  String getCorrectAnswer() {
    return questionBank[questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (questionNumber >= questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    questionNumber = 0;
  }
}
