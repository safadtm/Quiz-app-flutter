// ignore_for_file: public_member_api_docs, sort_constructors_first
class QuizQuestionModel {
  final String question;
  final String correctAnswer;
  final List<String> options;
  QuizQuestionModel({
    required this.question,
    required this.correctAnswer,
    required this.options,
  });
}
