import 'package:quizz_like_application/data/Question.dart';

List<Question> getQuestion() {
  var firstQustion = Question();
  firstQustion.questionTitle = 'مشهورترین شعبده باز جهان کیست؟';
  firstQustion.imageNameNumber = '1';
  firstQustion.correctAnswer = 2;
  firstQustion.answerList = [
    'مرد نقابدار',
    'دیوید کاپرفیلد',
    'مری مودینی',
    'دیوید بلین'
  ];

  var secondQuestion = Question();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNameNumber = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = [
    'روسیه',
    'آمریکا',
    'هند',
    'چین'
  ];

  return [firstQustion, secondQuestion];
}