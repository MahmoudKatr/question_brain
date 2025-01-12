import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'custom_button.dart';
import 'question_brain.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizBrain quizBrain = QuizBrain();
  int length = QuizBrain().questionBank.length;
  int result = 0;
  int wrong = 0;
  List<Icon> scoreKeeper = [];
  void checkAnswer(String userPickedAnswer) {
    String correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(const Icon(Icons.check, color: Colors.green));
          result++;
        } else {
          wrong++;
          scoreKeeper.add(const Icon(Icons.close, color: Colors.red));
        }
        Alert(
          context: context,
          title: 'Finished!',
          desc:
              'You\'ve reached the end of the quiz. Results = $result / $length, Wrong Answer: $wrong',
        ).show();
        result = 0;
        wrong = 0;
        quizBrain.reset();
        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(const Icon(Icons.check, color: Colors.green));
          result++;
        } else {
          wrong++;
          scoreKeeper.add(const Icon(Icons.close, color: Colors.red));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Quiz App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, bottom: 80, top: 50),
        child: Column(
          children: [
            Expanded(
              child: Text(
                quizBrain.getQuestionText(),
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            CustomButton(
              chooseAnswer: quizBrain.getAnswerA(),
              click: () => checkAnswer('A'),
            ),
            CustomButton(
              chooseAnswer: quizBrain.getAnswerB(),
              click: () => checkAnswer('B'),
            ),
            CustomButton(
              chooseAnswer: quizBrain.getAnswerC(),
              click: () => checkAnswer('C'),
            ),
            CustomButton(
              chooseAnswer: quizBrain.getAnswerD(),
              click: () => checkAnswer('D'),
            ),
            const SizedBox(height: 20),
            Row(
              children: scoreKeeper,
            )
          ],
        ),
      ),
    );
  }
}
