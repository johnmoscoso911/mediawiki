import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'commons/index.dart';
import 'ui/pages/index.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Coolors.darkMossGreen,
        textTheme: GoogleFonts.snigletTextTheme(),
      ),
      // home: const HomePage(),
      routes: <String, WidgetBuilder>{
        '/': (_) => const HomePage(),
        '/quiz': (_) => const QuizPage(),
      },
      initialRoute: '/',
    );
  }
}
