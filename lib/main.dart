import 'package:flutter/material.dart';
import 'package:mexican_calculator/widgets/domino_piece.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculadora Mexicana'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List list = new List<int>.generate(12, (i) => i + 1);

  void _incrementCounter(int incremet) {
    setState(() {
      _counter += incremet;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(color: new Color(0xFFEAEBF3)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                  onLongPress: () { setState(() {
                    _counter = 0;
                  });},
                  child: Text(
                    '$_counter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 112,
                    ),
                  ),
              ),
              GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 4,
                children: list.map((item) => DominoPiece(
                  onTap: () => _incrementCounter(item),
                  value: item,
                )).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}