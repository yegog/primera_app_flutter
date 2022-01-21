// ignore_for_file: prefer_const_constructors

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
  // ignore: prefer_const_constructors_in_immutables
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
              "https://media.istockphoto.com/photos/technology-concept-picture-id183693635"),
          fit: BoxFit.cover),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          nombre(),
          campoUsiario(),
          campoContrasena(),
          botonEntrar()
        ],
      ),
    ),
  );
}

Widget nombre() {
  return Text(
    "Sing in",
    style: TextStyle(
        color: Colors.black87, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget campoUsiario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: TextField(
        decoration: InputDecoration(
      hintText: "User",
      fillColor: Colors.white,
      filled: true,
    )),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          fillColor: Colors.white,
          filled: true,
        )),
  );
}

Widget botonEntrar() {
  return MaterialButton(
      minWidth: 300.0,
      height: 50.0,
      child: Text('Ingresar', style: TextStyle(color: Colors.white)),
      color: Colors.black,
      onPressed: () {
        // ignore: avoid_print
        print("Boton accionado");
      });

  /**return MaterialButton(
      minWidth: 300.0,
      height: 50.0,
      // ignore: avoid_print
      child: Text('Ingresar', style: TextStyle(color: Colors.white)),
      color: Colors.black,
      onPressed: () {
        Navigator.push=>(Pagina02()),
        );
      });
*/
}
 

/** creacion de un boton icono y texto funcional con unu ELEVATEBUTTON Y SU ONPRESSED
class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("mi App"),
      ),

      body: Center(
        child: ElevatedButton(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Icon(Icons.access_time),
                SizedBox(
                  width: 7  ,
                ),
                Text("now"),
              ],
            ),
            onPressed: () {
              var t = DateTime.now();
              // ignore: avoid_print
              print(t);
            }),
      ),

      /**
      ESTA PARTE PERMITE MOVER LOS COMPONENTES DE LOS WIDGETS DENTRO DE LA APLICACION 
         TANTO PARA ROW COMO PARA COLUMN
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
        )*/

      // ESTA PARTE PERMITE INGRESAS IMAGENES A LA APLICACION
      //body: ListView(children: <Widget>[
      /** 
      Container(
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
 */ 
