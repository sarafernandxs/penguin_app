// lib/screens/penguin_quiz_screen.dart
import 'package:flutter/material.dart';

class PenguinQuizScreen extends StatefulWidget {
  const PenguinQuizScreen({Key? key}) : super(key: key);

  @override
  State<PenguinQuizScreen> createState() => _PenguinQuizScreenState();
}

class _PenguinQuizScreenState extends State<PenguinQuizScreen> {
  int currentQuestion = 0;
  int score = 0;

  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Pinguins conseguem voar?',
      'answers': [
        {'text': 'Sim', 'correct': false},
        {'text': 'Não', 'correct': true},
      ]
    },
    {
      'question': 'Onde os pinguins vivem?',
      'answers': [
        {'text': 'Hemisfério Norte', 'correct': false},
        {'text': 'Hemisfério Sul', 'correct': true},
      ]
    },
    {
      'question': 'Qual é o maior pinguim?',
      'answers': [
        {'text': 'Pinguim-imperador', 'correct': true},
        {'text': 'Pinguim-de-adélia', 'correct': false},
      ]
    },
  ];

  void answerQuestion(bool isCorrect) {
    if (isCorrect) score++;

    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    } else {
      // Final do quiz
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Quiz finalizado! 🐧'),
          content: Text('Sua pontuação: $score / ${questions.length}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  currentQuestion = 0;
                  score = 0;
                });
              },
              child: const Text('Reiniciar'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var questionData = questions[currentQuestion];

    return Scaffold(
      appBar: AppBar(title: const Text('Quiz de Pinguins 🐧')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pergunta ${currentQuestion + 1}/${questions.length}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              questionData['question'],
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ...(questionData['answers'] as List<Map<String, dynamic>>)
                .map((answer) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        onPressed: () =>
                            answerQuestion(answer['correct']),
                        child: Text(answer['text']),
                      ),
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}