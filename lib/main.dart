import 'package:flutter/material.dart';
import './products.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Un Gelato'];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0), // here the desired height
            child: AppBar(
              centerTitle: true,
              title: Container(
                  margin: EdgeInsets.only(top:13),
                  child: Row(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(43),
                        child: Image.asset(
                          'assets/gelato.jpg',
                          height: 43,
                          width: 43,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Abeer Ahmed",
                            textScaleFactor: 0.9,
                            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          Text(
                            "Development",
                            textScaleFactor: 0.8,
                            style: TextStyle(
                                color: Color.fromRGBO(100, 100, 100, 1)),
                          )
                        ],
                      ),
                    )
                  ])),
              brightness: Brightness.light,
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            )),
        body: Column(children: [
          //* ADD BUTTON
          Container(
            margin: EdgeInsets.all(15),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  _products.add('Una Mela');
                });
              },
              child: Text('Add'),
            ),
          ),
          Products(_products),
        ]),
      ),
    );
  }
}
