import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ropero 588 con Espejo"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 2.0,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Column(
            children: const [
              Image(
                image: NetworkImage(
                    'https://agenciaswayonline.com/wp-content/uploads/2019/09/Ropero-Napoli.jpg'),
              ),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: Text(
                  "Bs.1,490.00 \nEl Ropero tiene un estilo moderno, es funcional, resistente y durable al uso cotidiano. Se complementa con diseño versátil para que tengas varias soluciones donde guardar. Alta calidad a un muy buen precio!",
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
