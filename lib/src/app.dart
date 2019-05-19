import 'package:flutter/material.dart';
import 'package:flutter_vscode/src/pages/counter_page.dart';
// import 'package:flutter_vscode/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // Metodo encargado de dibujar
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: HomePage(),
        child: CounterPage(),
      ),
    );
  }
}
