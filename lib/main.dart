import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';

import 'commons/index.dart';
import 'ui/pages/index.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
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
      title: 'Quiz',
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
