import 'package:quizz_like_application/data/Question.dart';

List<Question> getQuestion() {
  var firstQuestion = Question();
  firstQuestion.questionTitle = 'مشهورترین شعبده باز جهان کیست؟';
  firstQuestion.imageNameNumber = '1';
  firstQuestion.correctAnswer = 2;
  firstQuestion.answerList = [
    'مرد نقابدار',
    'دیوید کاپرفیلد',
    'مری مودینی',
    'دیوید بلین'
  ];

  var secondQuestion = Question();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNameNumber = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = ['روسیه', 'آمریکا', 'هند', 'چین'];

  return [firstQuestion, secondQuestion];
}
