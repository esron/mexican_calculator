import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:mexican_calculator/widgets/domino_piece.dart';

class EnvironmentConfig {
  static const TEST_DEVICE = String.fromEnvironment(
    'DEFINE_TEST_DEVICE',
    defaultValue: 'Device ID'
  );

  static const BANNER_ID = String.fromEnvironment(
    'DEFINE_BANNER_ID',
    defaultValue: 'ca-app-pub-3940256099942544/6300978111'
  );

  static const ADS_APP_ID = String.fromEnvironment(
    'DEFINE_APPLICATION_ID',
    defaultValue: 'ca-app-pub-3940256099942544~3347511713'
  );
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mexican Calculator',
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
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: <String>[EnvironmentConfig.TEST_DEVICE],
    nonPersonalizedAds: true,
    keywords: <String>['Game', 'Dominó']
  );

  int _counter = 0;
  List list = new List<int>.generate(12, (i) => i + 1);

  BannerAd _bannerAd;

  BannerAd createBannerAd(){
    return BannerAd(
      adUnitId: EnvironmentConfig.BANNER_ID,
      size: AdSize.fullBanner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd $event");
      }
    );
  }

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(
      appId: EnvironmentConfig.ADS_APP_ID,
    );

    _bannerAd = createBannerAd()..load()..show();

    super.initState();
  }

  @override
  void dispose() {
    _bannerAd.dispose();

    super.dispose();
  }

  void _incrementCounter(int incremet) {
    setState(() {
      _counter += incremet;
    });
  }

  void _cleanCounter() {
    setState(() {
      _counter = 0;
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
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      '$_counter',
                      style: TextStyle(
                        color: Color(0xFF134E95),
                        fontSize: 112,
                      ),
                    ),
                  ),
                  if(_counter > 0)
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 130,
                        child: IconButton(
                          icon: new Icon(FeatherIcons.x),
                          color: Color(0xFF8F8D8D),
                          iconSize: 50,
                          padding: new EdgeInsets.only(right: 10.0),
                          onPressed: () => _cleanCounter(),
                        ),
                      ),
                    ),
                ],
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
