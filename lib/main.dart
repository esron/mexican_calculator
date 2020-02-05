import 'package:flutter/material.dart';
import 'package:mexican_calculator/widgets/domino_piece.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

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
                      color: Color(0xFF134E95),
                      fontSize: 112,
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 30.0),
                child: Divider(
                  thickness: 1.5,
                  color: Color(0x96717171),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(15),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
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