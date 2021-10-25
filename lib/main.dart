import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var initialvalue = 0;
  void oneAnswer() {
    setState(() {
      initialvalue = initialvalue + 1;
    });
    print(initialvalue);
  }

  var question = [
    "What is your Favurite color ?",
    "What's your fav flower ?",
    "What's your fav Phone ?",
    "what's your fav Laptop name and model ?",
    "what's your age ?"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar Limon"),
        ),
        body: Column(
          children: <Widget>[
            Text(question[initialvalue]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: oneAnswer,
                  child: Text("Answer 1"),
                ),
                RaisedButton(
                  onPressed: oneAnswer,
                  child: Text("Answer 2"),
                ),
                RaisedButton(
                  onPressed: oneAnswer,
                  child: Text("Answer 3"),
                ),
                RaisedButton(
                  onPressed: oneAnswer,
                  child: Text("Answer 4"),
                ),
                RaisedButton(
                  onPressed: oneAnswer,
                  child: Text("Answer 5"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
