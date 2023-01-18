import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../models/index.dart';
import '../../widgets/button.dart';

class QuizStatsPage extends StatefulWidget {
  final Function() onStats;
  const QuizStatsPage({Key? key, required this.onStats}) : super(key: key);

  @override
  State<QuizStatsPage> createState() => _QuizStatsPageState();
}

class _QuizStatsPageState extends State<QuizStatsPage> {
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    var theme = Theme.of(context);
    // var padding = MediaQuery.of(context).padding;

    List<QuestionAnswered> answered =
        ModalRoute.of(context)!.settings.arguments as List<QuestionAnswered>;

    int x = answered
        .where((q) =>
            q.question.answers.where((a) => a.isCorrect).first == q.answer)
        .length;

    List<Question> bad = answered
        .where((q) =>
            q.question.answers.where((a) => a.isCorrect).first != q.answer)
        .map((e) => e.question)
        .toList();

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
          Container(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _Indicator(
                  color: theme.primaryColor,
                  icon: Ionicons.happy_outline,
                  quantity: x,
                  percent: x / answered.length,
                ),
                _Indicator(
                  color: theme.errorColor,
                  icon: Ionicons.sad_outline,
                  quantity: answered.length - x,
                  percent: (answered.length - x) / answered.length,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                  child: Text(
                    'Ud. erró en las siguientes preguntas:',
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                ...bad
                    .map((e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Text(
                            e.text,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ))
                    .toList(),
              ],
            ),
          ),
          Positioned(
            bottom: padding.bottom,
            left: 0,
            right: 0,
            child: CustomButton(
              onPressed: widget.onStats,
              text: 'Le agradecemos su participación, inténtelo nuevamente!',
            ),
          ),
        ],
      ),
    );
  }
}

class _Indicator extends StatelessWidget {
  final IconData icon;
  final num quantity;
  final Color color;
  final num percent;
  const _Indicator(
      {Key? key,
      required this.percent,
      required this.color,
      required this.icon,
      required this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: width * .8 * percent,
            height: 32,
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius:
                    const BorderRadius.horizontal(right: Radius.circular(8)),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '$quantity',
            style: theme.textTheme.labelSmall,
          )
        ],
      ),
    );
  }
}
