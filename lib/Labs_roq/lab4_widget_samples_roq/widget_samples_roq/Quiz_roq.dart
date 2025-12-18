import 'package:flutter/material.dart';

void main() => runApp(const MyApp_Roq());

class MyApp_Roq extends StatefulWidget {
  const MyApp_Roq({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyApp_RoqState();
  }
}

class _MyApp_RoqState extends State<MyApp_Roq> {
  final List<Map<String, Object>> questions_Roq = const [
    {
      'questionText': 'Q1. Who created Flutter?',
      'answers': [
        {'text': 'Facebook', 'score': -2},
        {'text': 'Adobe', 'score': -2},
        {'text': 'Google', 'score': 10},
        {'text': 'Microsoft', 'score': -2},
      ],
    },
    {
      'questionText': 'Q2. What is Flutter?',
      'answers': [
        {'text': 'Android Development Kit', 'score': -2},
        {'text': 'IOS Development Kit', 'score': -2},
        {'text': 'Web Development Kit', 'score': -2},
        {
          'text':
              'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
          'score': 10
        },
      ],
    },
    {
      'questionText': ' Q3. Which programing language is used by Flutter',
      'answers': [
        {'text': 'Ruby', 'score': -2},
        {'text': 'Dart', 'score': 10},
        {'text': 'C++', 'score': -2},
        {'text': 'Kotlin', 'score': -2},
      ],
    },
    {
      'questionText': 'Q4. Who created Dart programing language?',
      'answers': [
        {'text': 'Lars Bak and Kasper Lund', 'score': 10},
        {'text': 'Brendan Eich', 'score': -2},
        {'text': 'Bjarne Stroustrup', 'score': -2},
        {'text': 'Jeremy Ashkenas', 'score': -2},
      ],
    },
    {
      'questionText':
          'Q5. Is Flutter for Web and Desktop available in stable version?',
      'answers': [
        {
          'text': 'Yes',
          'score': -2,
        },
        {'text': 'No', 'score': 10},
      ],
    },
  ];

  var questionIndex_roq = 0;
  var totalScore_roq = 0;

  void resetQuiz_funRoq() {
    setState(() {
      questionIndex_roq = 0;
      totalScore_roq = 0;
    });
  }

  void _answerQuestion(int score) {
    totalScore_roq += score;

    setState(() {
      questionIndex_roq = questionIndex_roq + 1;
    });
    // ignore: avoid_print
    print(questionIndex_roq);
    if (questionIndex_roq < questions_Roq.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App Roqِ'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: questionIndex_roq < questions_Roq.length
              ? Quiz_Roq(
                  answerQuestion: _answerQuestion,
                  questionIndex: questionIndex_roq,
                  questions: questions_Roq,
                ) //Quiz
              : Result_Roq(
                  resultScore: totalScore_roq, resetHandler: resetQuiz_funRoq),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}

class Quiz_Roq extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz_Roq({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
        ), //Question
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer_Roq(
              () => answerQuestion(answer['score']), answer['text'].toString());
        }).toList()
      ],
    ); //Column
  }
}
/////////////////////////////// Question Class

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ), //Text
    ); //Contaier
  }
}
////////////////////////// Answer Class

class Answer_Roq extends StatelessWidget {
  final void Function()? selectHandler;
  final String answerText;

  const Answer_Roq(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // use SizedBox for white space instead of Container
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
                const TextStyle(color: Colors.white, fontSize: 18)),
            backgroundColor: MaterialStateProperty.all(Colors.pink.shade300)),
        child: Text(answerText),
      ),

      // RaisedButton is deprecated and should not be used
      // Use ElevatedButton instead

      // child: RaisedButton(
      // color: const Color(0xFF00E676),
      // textColor: Colors.white,
      // onPressed: selectHandler(),
      // child: Text(answerText),
      // ), //RaisedButton
    ); //Container
  }
}

////////////////////  Result Class

// ignore_for_file: avoid_print

class Result_Roq extends StatelessWidget {
  final int resultScore;
  final VoidCallback? resetHandler;

  // final Function resetHandler;

  const Result_Roq(
      {required this.resultScore, required this.resetHandler, Key? key})
      : super(key: key);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 41) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 31) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 21) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 1) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            'Score ' '$resultScore',
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          TextButton(
            onPressed: resetHandler,
            child: Container(
              color: Colors.pinkAccent,
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          // FlatButton is deprecated and should not be used
          // Use TextButton instead

          // FlatButton(
          // child: Text(
          //	 'Restart Quiz!',
          // ), //Text
          // textColor: Colors.blue,
          // onPressed: resetHandler(),
          // ), //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
