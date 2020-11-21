import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TerceraPantalla extends StatefulWidget{
  _TerceraPantalla createState() => new _TerceraPantalla();
}

class _TerceraPantalla extends State<TerceraPantalla>{
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        padding: EdgeInsets.all(30),


        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text("Terminos y condiciones\n\n",style: TextStyle(
              fontSize: 20,
              fontFamily: "Arial",
              fontWeight:FontWeight.bold,
            ),),
            Image.asset("lib/imagenes/terminos.png"),
            Text("\n\n\n\nEsta aplicación solo es una ayuda para usted, todos los resultados no son siempre el correcto, "
                "por ende debe acudir a su centro de salud más cercano\n\n\n\n",textAlign: TextAlign.justify,style: TextStyle(
              fontFamily: "Arial",
              fontSize: 16,

            ),),
            ButtonTheme(
              minWidth: 150.0,
              height: 50,
              child: RaisedButton(
                color: Colors.blue,
                child: Text("Siguiente", style: TextStyle(color: Colors.white)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                onPressed: (){
                  Navigator.pushNamed(context,'/perfil');

                },
              ),
            ),





          ],
        ),

      ),
    );
  }
}