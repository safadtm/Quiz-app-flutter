import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';
import 'package:quiz_app/quiz_question_model.dart';
import 'package:quiz_app/result_screen.dart';

class PlayQuizScreen extends StatefulWidget {
  const PlayQuizScreen({super.key});

  @override
  State<PlayQuizScreen> createState() => _PlayQuizScreenState();
}

class _PlayQuizScreenState extends State<PlayQuizScreen> {
  final PageController pageController = PageController();
  bool isAnswerLocked = false;
  int currentIndex = 0, correctAnswers = 0, wrongAnswers = 0;
  String correctAnswer = "", selectectedAnswer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: backgroundColor),
        backgroundColor: foregroundColor,
        centerTitle: true,
        title: const Text(
          "Play Quiz",
          style: TextStyle(
            color: backgroundColor,
          ),
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: quizQuestions.length,
        itemBuilder: (context, index) {
          QuizQuestionModel model = quizQuestions[index];

          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    model.question,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: List.generate(
                    model.options.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isAnswerLocked = true;
                            selectectedAnswer = model.options[index];
                            correctAnswer = model.correctAnswer;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: foregroundColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: selectectedAnswer == model.options[index]
                                ? foregroundColor
                                : backgroundColor,
                          ),
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.all(14),
                          child: Text(
                            model.options[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          if (isAnswerLocked) {
            if (selectectedAnswer == correctAnswer) {
              correctAnswers++;
            } else {
              wrongAnswers++;
            }

            currentIndex++;

            if (currentIndex != quizQuestions.length) {
              pageController.jumpToPage(currentIndex);
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    correctAnswers: correctAnswers,
                    wrongAnswers: wrongAnswers,
                  ),
                ),
              );
            }
          } else {}
        },
        child: Container(
          height: 70,
          color: foregroundColor,
          alignment: Alignment.center,
          child: const Text(
            "Next",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: backgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
