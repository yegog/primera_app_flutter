import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi app",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text("mi App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              // ignore: prefer_const_constructors
              child: Text(
                "hola 01",
                textAlign: TextAlign.center,
              ),
            ),
            // ignore: prefer_const_constructors
            Text(" hola 02"),
          ],
        )
        //
        //body: ListView(children: <Widget>[
        /**  Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network(
                "https://images-cdn.9gag.com/photo/aYK8R1m_460s.jpg"),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network(
                "https://media.istockphoto.com/photos/businessman-trading-online-stock-market-on-teblet-screen-digital-picture-id1311598658"),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network(
                "https://media.istockphoto.com/photos/technology-concept-picture-id183693635"),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network(
                "https://images-cdn.9gag.com/photo/aYK8R1m_460s.jpg"),
          )
        ]*/
        );
  }
}
