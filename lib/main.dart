import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joke/presentation/views/joke_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Joke',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const JokePage(),
    );
  }
}
