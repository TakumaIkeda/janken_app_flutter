import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:janken_app/result.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('じゃんけんアプリ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
              ),
              child: Text(
                'あなたが出す手を選択してください',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            RaisedButton(
              child: Text(
                '✊',
                style: TextStyle(fontSize: 30.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(0),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text(
                '✌',
                style: TextStyle(fontSize: 30.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(1),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text(
                '✋',
                style: TextStyle(fontSize: 30.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(2),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
