import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:synto_app/UI/pages/Menu/miPerfil.dart';
import 'package:validators/validators.dart' as validators;
import 'package:synto_app/Models/modelo_perfil.dart';
import 'resultado_perfil.dart';
import 'package:synto_app/UI/Widgets/avisosWidget.dart';
import 'package:synto_app/UI/Widgets/custom_buttom.dart';
import 'package:shared_preferences/shared_preferences.dart';
class TestForm extends StatefulWidget {
  @override
  _TestFormState createState() => _TestFormState();

}

class _TestFormState extends State<TestForm> {
  final _formKey = GlobalKey<FormState>();
  Model model = Model();

  @override
  Widget build(BuildContext context) {
    final halfMediaWidth = MediaQuery.of(context).size.width;


    return new Scaffold(
      appBar: AppBar(
        title: Text("Crear perfil"),
      ),
      body: Form(
        key:_formKey,

        child: Column(
          children: <Widget> [
            Text("\n"),
            Image.asset("lib/imagenes/usuario.png",height:120 ,width:120 ,),
            Container(
              alignment: Alignment.topCenter,
              width: halfMediaWidth,
              child: MyTextFormField(
                hintText: ("Nombre"),
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Ingresa tu nombre";
                  }
                  return null;
                },
                onSaved: (String value) async {
                  model.Nombre = value;
                },
              ),

            ),
            Container(
              alignment: Alignment.topCenter,
              width: halfMediaWidth,
              child: MyTextFormField(
                hintText: ("Edad"),
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Ingresa tu edad";
                  }
                  return null;
                },
                // agregar condicion +18
                onSaved: (String value) {
                  model.Edad = value;
                },

              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              width: halfMediaWidth,
              child: MyTextFormField(
                hintText: ("Genero"),
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Ingresa tu genero";
                  }
                  return null;
                },
                onSaved: (String value) {
                  model.Genero = value;
                },
              ),
            ),
            RaisedButton(
              color: Colors.blueGrey,
              child: Text("Confirmar",
                style: TextStyle(
                  color: Colors.white,
                ),),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  guardarPreferencias(),
                  MaterialPageRoute(
                      builder: (context) => RResult(model: this.model));
                  Navigator.pushNamed(context, "/menu",);






                };
              },

            )
          ],

        ),
      ),


    );

  }
}

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;

  MyTextFormField( {
    this.hintText,
    this.validator,
    this.onSaved,

  });
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: hintText,
              contentPadding: EdgeInsets.all(15.0),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey
          ),
          validator: validator,
          onSaved: onSaved,


        ),
      ),


    );


  }
  Future<void> obtPreferencias() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.get("email")??"hola";

  }
  guardarPreferencias() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(hintText,value );
    preferences.setString(key, value)
  }
}