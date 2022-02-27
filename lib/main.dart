import 'package:flutter/material.dart';
import 'input_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF131433),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF000233)
        )
      ),
      home: InputPage(),
    );
  }
}

