import 'package:flutter/material.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:synto_app/UI/Widgets/TabPage.dart';
import 'package:synto_app/UI/pages/CuartaPantalla.dart';
import 'package:synto_app/UI/pages/TerceraPantalla.dart';
import 'package:synto_app/UI/pages/perfil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: PaginaInicio(),
      initialRoute: "/",
      routes: {
        '/segundo' : (context) => TabPage(),
        '/menu': (context) => CuartaPantalla(),
        '/perfil': (context) => TestForm(),
      },
    );

  }
}
class PaginaInicio extends StatefulWidget{
  _PaginaInicio createState() => new _PaginaInicio();
}
class _PaginaInicio extends State<PaginaInicio>{
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.cyan[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget> [


            Image.asset("lib/imagenes/iconito.png",height: 100,width: 100,),
            Text("SyntoApp\n",style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
            ButtonTheme(

              minWidth: 200.0,
              height: 50,
              child: RaisedButton(
                color: Colors.white,
                child: Text("Empezar", style: TextStyle(color: Colors.blue,fontSize: 18)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "/segundo");
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
