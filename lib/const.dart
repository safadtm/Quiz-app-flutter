import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_question_model.dart';

const backgroundColor = Color.fromRGBO(45, 27, 3, 1);
const foregroundColor = Color.fromRGBO(244, 140, 6, 1);

List<QuizQuestionModel> quizQuestions = [
  QuizQuestionModel(
    question: "1. JSON stands for",
    correctAnswer: "JavaScript Object Notation",
    options: [
      "Java Standard Output Network",
      "JavaScript Object Notation",
      "JavaScript Output Name",
      "Java Source Open Network",
    ],
  ),
  QuizQuestionModel(
    question: "2. Which of the following is not a type in JSON?",
    correctAnswer: "Date",
    options: [
      "Date",
      "Object",
      "Array",
      "String",
    ],
  ),
  QuizQuestionModel(
    question: "3. Who is the Father of JSON",
    correctAnswer: "Douglas Crockford",
    options: [
      "Douglas Crockford",
      "Rasmus Lerdof",
      "Douglas Michel",
      "Dennis Ritchie",
    ],
  ),
  QuizQuestionModel(
    question: "4. Can you use a double quote inside a JSON",
    correctAnswer: "Yes,if it is escaped like (\")",
    options: [
      "No,you should use single quotes",
      "Yes,if you use the ascii code",
      "Yes,if it is escaped like (\")",
      "Yes,you can use it without any special treatment",
    ],
  ),
  QuizQuestionModel(
    question: "5.What are two main structures compose JSON?",
    correctAnswer: "Keys and values",
    options: [
      "Arrays and Objects",
      "Keys and values",
      "Class and Objects",
      "None of the above",
    ],
  ),
  QuizQuestionModel(
    question: "6. How do JSON provide internationalization ",
    correctAnswer: "Using Unicode",
    options: [
      "Using Unicode",
      "Using keys",
      "Using datatype",
      "Using lang",
    ],
  ),
  QuizQuestionModel(
    question: "7. JSON strings have used in ",
    correctAnswer: "Double quote",
    options: [
      "Double quote",
      "Single quote",
      "Both 1&2",
      "None of these",
    ],
  ),
  QuizQuestionModel(
    question: "8. What is the common usage of JSON on modern websites?",
    correctAnswer: "To send and recieve bits of data",
    options: [
      "To store the information remotely",
      "To store the information locally",
      "To send and recieve bits of data",
      "All of the above",
    ],
  ),
  QuizQuestionModel(
    question: "9. JSON elements are separeted by the -",
    correctAnswer: "comma",
    options: [
      "line break",
      "semi-colon",
      "comma",
      "white space",
    ],
  ),
  QuizQuestionModel(
    question: "10. JSONP stands for -",
    correctAnswer: "JSON with Padding",
    options: [
      "JSON Parsing",
      "JSON Procedures",
      "JSON Programming",
      "JSON with Padding",
    ],
  ),
];
