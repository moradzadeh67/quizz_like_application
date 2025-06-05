import 'package:flutter/material.dart';
import 'package:quizz_like_application/Constant/Constant.dart';
import 'package:quizz_like_application/data/Question.dart';
import 'package:quizz_like_application/screens/result_screen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;
  Question? selectedQuestion;
  bool isFinalAnswerSubmited = false;
  int correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestion()[shownQuestionIndex];
    String questionImageIndex =
        getQuestion()[shownQuestionIndex].imageNameNumber!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        title: Text(
          'سوال ${shownQuestionIndex + 1} از ${getQuestion().length}',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            Image(
              image: AssetImage('images/$questionImageIndex.png'),
              height: 300,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              selectedQuestion!.questionTitle!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            ...List.generate(4, (index) => getOptionsItem(index)),
            if (isFinalAnswerSubmited)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellowAccent,
                    minimumSize: Size(200.0, 50.0)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ResultScreen(
                        correctAnswer: correctAnswer,
                      ),
                    ),
                  );
                },
                child: Text(
                  'مشاهده نتایج کوییز',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              )
          ],
        ),
      ),
    );
  }

  Widget getOptionsItem(int index) {
    return ListTile(
      title: Text(
        selectedQuestion!.answerList![index],
        textAlign: TextAlign.end,
      ),
      onTap: () {
        if (selectedQuestion!.correctAnswer == index) {
          correctAnswer++;
        } else {
          print('wrong');
        }

        if (shownQuestionIndex == getQuestion().length - 1) {
          isFinalAnswerSubmited = true;
        }

        setState(() {
          if (shownQuestionIndex < getQuestion().length - 1) {
            shownQuestionIndex++;
          }
        });
      },
    );
  }
}
