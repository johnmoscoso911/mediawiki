import 'package:flutter/material.dart';

import '../widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      color: theme.scaffoldBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const _Header(),
          CustomButton(
            text: 'Iniciar',
            onPressed: () => Navigator.of(context).pushNamed('/quiz'),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(size.width * .08)),
        //border: Border.all(color: theme.primaryColor),
        color: theme.scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: theme.primaryColor,
            offset: const Offset(0, 1.0),
            blurStyle: BlurStyle.outer,
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'images/quiz.png',
            color: theme.primaryColorLight,
            fit: BoxFit.fitWidth,
          ),
          FittedBox(
            child: Text(
              'Feria de ciencias v1.0',
              style: theme.textTheme.displayLarge!
                  .copyWith(color: theme.primaryColor),
            ),
          ),
          Text(
            'Esteban Moscoso',
            style: theme.textTheme.bodyMedium,
          ),
          Text(
            'Primero Bachillerato Informática',
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
