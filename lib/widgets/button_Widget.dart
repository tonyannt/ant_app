import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  
  final String texto;
  final Color colorbutton;
  final Color colortext;
  final double alto;
  final Function() onpressed;

  const ButtonWidget({super.key, required this.texto, required this.colorbutton, required this.colortext, required this.alto, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
              child: Container(
                width: double.infinity,
                height: alto,
                child: Center(child: 
                Text(
                  texto,
                  style: TextStyle(
                    color: colortext, 
                    fontSize: 17, fontWeight: FontWeight.bold
                  ),),),
              ),
              shape: StadiumBorder(),//Redondeo del boton
              color: colorbutton,
              highlightElevation: 5,
              elevation: 2,
              onPressed: onpressed
            ),
    );
  }
}