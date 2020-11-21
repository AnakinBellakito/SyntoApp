import 'package:flutter/material.dart';
import 'package:synto_app/Models/modelo_perfil.dart';

class Result extends StatelessWidget {
  Model model;

  Result({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Perfil"),),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text (
              model.Nombre,
              style: TextStyle(fontSize: 22.0),
            ),
            Text(
              model.Edad,
              style: TextStyle(fontSize: 22.0),
            ),
            Text (
              model.Genero,
              style: TextStyle(fontSize: 22.0),
            )
       
          ],

        ),
      ),
    );
  }
}