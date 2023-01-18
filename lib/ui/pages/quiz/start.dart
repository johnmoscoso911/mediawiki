import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

import '../../../models/index.dart';

class StartQuizPage extends StatefulWidget {
  final List<Question> questions;
  const StartQuizPage({Key? key, required this.questions}) : super(key: key);

  @override
  State<StartQuizPage> createState() => _StartQuizPageState();
}

class _StartQuizPageState extends State<StartQuizPage> {
  late int index;
  late CountDownController _controller;
  Answer? _groupValue;
  late List<QuestionAnswered> _answered;

  @override
  void initState() {
    super.initState();
    index = 0;
    _controller = CountDownController();
    _answered = [];
  }

  void _nextOrFinish() {
    if (index < widget.questions.length - 1) {
      _answered.add(QuestionAnswered(widget.questions[index], _groupValue));
      index++;
      _groupValue = null;
      _controller.start();
      debugPrint('${index + 1}/${widget.questions.length}');
      setState(() {});
    } else {
      _answered.add(QuestionAnswered(widget.questions[index], _groupValue));
      Navigator.of(context).popAndPushNamed('quiz/stats', arguments: _answered);
    }
  }

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    var theme = Theme.of(context);
    var question = widget.questions[index];

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/quiz.png',
          fit: BoxFit.fitHeight,
          height: padding.top,
          color: theme.scaffoldBackgroundColor,
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: padding.bottom,
            left: 0,
            right: 0,
            child: CircularCountDownTimer(
              controller: _controller,
              width: padding.top,
              height: padding.top,
              duration: 17,
              fillColor: theme.primaryColor,
              ringColor: theme.errorColor,
              isReverse: true,
              onComplete: _nextOrFinish,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                Text(
                  question.text,
                  style: theme.textTheme.titleLarge,
                ),
                const SizedBox(height: 12.0),
                ...question.answers.map(
                  (e) => _AnswerWidget(
                      answer: e,
                      groupValue: _groupValue,
                      onChanged: (value) =>
                          setState(() => _groupValue = value)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AnswerWidget extends StatelessWidget {
  final Answer answer;
  final Answer? groupValue;
  final Function(Answer?)? onChanged;
  const _AnswerWidget(
      {Key? key,
      required this.answer,
      required this.groupValue,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Radio<Answer>(
              value: answer,
              groupValue: groupValue,
              onChanged: onChanged,
              toggleable: true,
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Text(
                answer.text,
                style: theme.textTheme.titleLarge,
                maxLines: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
