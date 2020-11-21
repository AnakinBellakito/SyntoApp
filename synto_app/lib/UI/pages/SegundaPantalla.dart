import 'package:flutter/material.dart';

class SegundaPantalla extends StatefulWidget{
  _SegundaPantalla createState() => new _SegundaPantalla();
}

class _SegundaPantalla extends State<SegundaPantalla>{

  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text("!Hola¡", style:TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 40,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.bold,

            ),),
            Image.asset("lib/imagenes/interrogacion.png",height: 200,width: 200,),
            Text("\n\nEstas a punto de realizar un chequeo medico. Sus respuestas seran analizadas y "
                "se le indicaran las posibles causas de su enfermedad",textAlign: TextAlign.justify,style: TextStyle(
              fontFamily: "Arial",
              fontSize: 16,

            ),),
            Text("\n→", textAlign: TextAlign.end,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)

          ],
        ),

      ),
    );
  }
}