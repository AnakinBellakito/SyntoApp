import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {

  final String title ;
  final VoidCallback onCallback;

  CustomButtom(this.title, this.onCallback);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.indigo,
        elevation: 5,
        child: Text(title, style: TextStyle(color: Colors.white)),
        onPressed: onCallback
    );
  }

}