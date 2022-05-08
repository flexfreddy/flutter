import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PageSate();
}

class _PageSate extends State<Pagina> {
  final estiloTexto =
      TextStyle(fontSize: 200, fontWeight: FontWeight.bold, color: Colors.black);
  final estiloBarra =
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);
  int inicio = 65;
  int fin = 90;
  int contador = 65;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Challenge #1",
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              String.fromCharCode(contador),
              style: estiloTexto,
            )
          ],
        ),
      ),
      floatingActionButton: _generaBotones(),
    );
  }

  Widget _generaBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            onPressed: _bajar,
            child: Icon(Icons.arrow_back),
            backgroundColor: Colors.lightBlue),
        SizedBox(width: 45.0),
        FloatingActionButton(
          onPressed: _subir,
          child: Icon(Icons.arrow_forward),
          backgroundColor: Colors.lightBlue,
        )
      ],
    );
  }

  void _subir() => setState(() {
    contador++;
    if (contador < inicio) {
      contador = inicio;
    } else if (contador > fin) {
      contador = inicio;
    }
  });

  void _bajar() => setState(() {
    contador--;
    if (contador < inicio) {
      contador = fin;
    } else if (contador > fin) {
      contador = inicio;
    }
  });
}
