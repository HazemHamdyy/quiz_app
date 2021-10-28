import 'package:flutter/material.dart';
import 'package:quiz_app/allLists.dart';
import 'package:quiz_app/screens/gamePage.dart';


class ScorePage extends StatefulWidget {
  const ScorePage({ Key? key }) : super(key: key);

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your score is $score / 10'),
            IconButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
                          return GamePage();
                        }));
            }, icon: Icon(Icons.replay))
          ],
        ),),
      ),
      
    );
  }
}