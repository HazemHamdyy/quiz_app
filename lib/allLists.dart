import 'package:flutter/material.dart';
import 'dart:math';
import 'package:quiz_app/snack.dart';

List<Map<String, dynamic>> questions = [
  {
    'question': 'What\'s the biggest country in the world?',
    'choices': [
      'Russia',
      'Brazil',
      'U.S.A',
      'China',
    ],
    'correctAswer': 'Russia',
  },
  {
    'question': 'What is the tallest building in the world?',
    'choices': [
      'Burj khalifa',
      'Eiffel tower',
      'Shanghai Tower',
      'Makkah Royal Clock Tower'
    ],
    'correctAswer': 'Burj khalifa',
  },
  {
    'question': 'In what year was the moon raised for the first time?',
    'choices': ['1959', '1962', '1966', '1969'],
    'correctAswer': '1959',
  },
  {
    'question': 'In what year did the First World War begin?',
    'choices': ['1914', '1918', '1911', '1919'],
    'correctAswer': '1914',
  },
  {
    'question': 'What team has won the World Cup the most?',
    'choices': ['Brazil', 'Germany', 'Italy', 'France'],
    'correctAswer': 'Brazil',
  },
  {
    'question': 'What is the capital of Malaysia?',
    'choices': ['Kuala Lumpur', 'Bangkok', 'taipei', 'Dili'],
    'correctAswer': 'Kuala Lumpur',
  },
  {
    'question': 'The biggest animal in the world is ...',
    'choices': ['the blue whale','Elephant','Rhino', 'hippopotamus'],
    'correctAswer': 'the blue whale',
  },
  {
    'question': 'Who killed a quarter of the earth\'s population?',
    'choices': ['Kabeel', 'Hetler', 'hulaku', 'No one'],
    'correctAswer': 'Kabeel',
  },
  {
    'question': 'What is the distance between the earth and the moon?',
    'choices': ['384,400 km', '276,600 km', '310,320 km', '420,700 km'],
    'correctAswer': '384,400 km',
  },
  {
    'question': 'What is the area of the Earth',
    'choices': [
      '510.1 million km²',
      '340 million km²',
      '615.7 million km²',
      '480.5 million km²'
    ],
    'correctAswer':'510.1 million km²',
  }
];

int score = 0;
int numOfQuestion = 0;

List<Color> colors = [
  Colors.blue,
  Colors.orange,
  Colors.yellow,
  Colors.redAccent
];


List randomList(List list) {
  list.shuffle();
  List myList = list;
  return myList;
}
List questionList = randomList(questions);


 


