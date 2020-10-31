import 'dart:math';

import 'package:caraoucoroa/resultado.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _exebirResultado() {
    var items = ["cara", "coroa"];
    var numero = Random().nextInt(items.length);
    var resultado = items[numero];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Text(
          "Cara ou coroa",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("imagens/logo.png"),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: _exebirResultado,
                  child: Image.asset("imagens/botao_jogar.png"),
                )),
          ],
        ),
      ),
    );
  }
}
