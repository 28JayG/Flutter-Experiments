import 'package:flutter/material.dart';
import 'package:local_json/src/home-page.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JSON APP",
      home: HomePage(),
    );
  }
}
