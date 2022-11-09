// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:quiz_app/const.dart';
import 'package:quiz_app/play_quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  final int correctAnswers, wrongAnswers;

  const ResultScreen({
    Key? key,
    required this.wrongAnswers,
    required this.correctAnswers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: foregroundColor,
        iconTheme: const IconThemeData(color: backgroundColor),
        centerTitle: true,
        title: const Text(
          "Result",
          style: TextStyle(
            color: backgroundColor,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                answerTab("Correct Answer", correctAnswers),
                answerTab("Wrong Answer", wrongAnswers),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlayQuizScreen(),
                  ),
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: foregroundColor),
              child: const Text(
                "Reset Quiz",
                style: TextStyle(
                  color: backgroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget answerTab(String title, int value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "$value",
          style: const TextStyle(
            color: foregroundColor,
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
