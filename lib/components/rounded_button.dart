import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  // Atributos - Constantes - Constantes de Instância
  final Color? colour;
  final String? title;
  //final VoidCallback? onPressed; // ou
  final void Function() onPressed;

  //String page;

  // Construtor
  RoundedButton({this.colour, this.title, required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        //color: Colors.lightBlueAccent,
        color: colour??Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(title??'',
          style: TextStyle(
            color: Colors.white,
          ),),
        ),
      ),
    );
  }
}
