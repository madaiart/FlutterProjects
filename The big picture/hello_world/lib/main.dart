import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("App Bar"),),
        body: Center(
          child: HelloText(),
        ),
      ),
    );
  }
}


class HelloText extends StatefulWidget {
  @override
  _HelloTextState createState() => _HelloTextState();
}

class _HelloTextState extends State<HelloText> {
  String helloText = '';
  final myController = TextEditingController();

  void sayHello(String text){
    setState(() {
      helloText = "Welcome " + text.toUpperCase() + '!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        onChanged: (text) => sayHello(text),
        controller: myController,
      ),
      Text(helloText),
    ],);
  }
}