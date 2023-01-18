import 'package:flutter/material.dart';

import '../../../data/index.dart';
import 'start.dart';
import 'stats.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'quiz/start',
      onGenerateRoute: (settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'quiz/start':
            builder = (_) => StartQuizPage(
                  questions: nextQuestions(),
                );
            break;
          case 'quiz/stats':
            builder = (_) => QuizStatsPage(
                  onStats: () => Navigator.of(context).pop(),
                );
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
