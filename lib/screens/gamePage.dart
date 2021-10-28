import 'package:flutter/material.dart';
import 'package:quiz_app/allLists.dart';
import 'package:quiz_app/screens/scorePage.dart';
import 'package:quiz_app/snack.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  List choices = randomList(questionList[numOfQuestion]['choices']);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.amber,
              ),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.08),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: Text(questionList[numOfQuestion]['question']),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: choices.length,
              itemBuilder: (context, index2) {
                return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (choices[index2] ==
                            questions[numOfQuestion]['correctAswer']) {
                          score++;
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snack('Correct', Colors.green));
                        } else if (choices[index2] !=
                            questions[numOfQuestion]['correctAswer']) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snack('Incorrect', Colors.red));
                        }
                        if (numOfQuestion != 9) {
                          numOfQuestion++;
                        } else if (numOfQuestion == 9) {
                          numOfQuestion = 0;
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) {
                            return ScorePage();
                          }));
                        }
                        choices =
                            randomList(questionList[numOfQuestion]['choices']);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: colors[index2],
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.08),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(choices[index2]),
                      ),
                    ));
              },
            ),
          )
        ],
      ),
    ));
  }
}
