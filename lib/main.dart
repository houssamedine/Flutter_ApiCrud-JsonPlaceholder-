import 'package:flutter/material.dart';
import 'package:flutter_api_todos_crud/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: Colors.blue[100],
        appBarTheme: AppBarTheme(
          elevation: 10,
        ),
      ),
      home: HomePage(),
    );
  }
}
