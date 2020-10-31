import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Resultado extends StatefulWidget {
  String resultado;
  Resultado(this.resultado);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    String _caminhoImagem;

    if (widget.resultado == 'coroa') {
      setState(() {
        _caminhoImagem = "imagens/moeda_coroa.png";
      });
    } else {
      setState(() {
        _caminhoImagem = "imagens/moeda_cara.png";
      });
    }

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
            Image.asset(_caminhoImagem),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset("imagens/botao_voltar.png"),
                )),
          ],
        ),
      ),
    );
  }
}
