import 'package:flutter/material.dart';
import 'package:synto_app/Models/modelo_perfil.dart';
import 'package:synto_app/UI/pages/resultado_perfil.dart';
/*
class PerfilPageTab extends StatefulWidget{
  _PerfilPageTab createState() => new _PerfilPageTab();
  Model model;
  PerfilPageTab({this.model});
}
*/
class RResult extends StatelessWidget{
  Model model;
  RResult({this.model});

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