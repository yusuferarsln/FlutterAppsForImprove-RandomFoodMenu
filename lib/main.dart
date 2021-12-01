import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'What should i eat?',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: FoodPage(),
      ),
    );
  }
}

class FoodPage extends StatefulWidget {
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int soapNo = 1;

  int foodNo = 1;

  int desertNo = 1;

  List<String> soapNames=['Mercimek','Tarhana','TavukSuyu','Düğün Çorbası','Yoğurtlu Çorba'];
  List<String> foodNames=['Karnıyarık','Mantı','Kuru Fasulye','İçli Köfte','Izgara Balık'];
  List<String> desertNames=['Kadayıf','Baklava','Sütlaç','Kazandibi','Dondurma'];

  //yemekAdlari:[];
  // tatliAdlari:[];
  //

  void randomFood() {
    soapNo = Random().nextInt(5) + 1;
    foodNo = Random().nextInt(5) + 1;
    desertNo = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: () {
                  setState(() {
                    randomFood();
                  });
                },
                child: Image.asset('assets/images/corba_$soapNo.jpg'),
              ),
            ),
          ),
          Text(
            soapNames[soapNo-1],
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Container(
            width: 200,
            child: Divider(height: 2, color: Colors.black),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      randomFood();
                    });
                  },
                  child: Image.asset('assets/images/yemek_$foodNo.jpg')),
            ),
          ),
          Text(
              foodNames[foodNo-1],
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Container(
            width: 200,
              child: Divider(height: 2,color: Colors.black,)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      randomFood();
                    });
                  },
                  child: Image.asset('assets/images/tatli_$desertNo.jpg')),
            ),
          ),
          Text(
            desertNames[desertNo-1],
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,

            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 2,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
