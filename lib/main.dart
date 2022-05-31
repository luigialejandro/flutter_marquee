import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
            color: Colors.amber[100],
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Marquee(
              child: Text('Pablo Gaspar Sandoval'),
              textDirection: TextDirection.rtl,
              animationDuration: Duration(seconds: 2),
              backDuration: Duration(milliseconds: 500),
              pauseDuration: Duration(milliseconds: 2500),
              directionMarguee: DirectionMarguee.oneDirection,
            )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
