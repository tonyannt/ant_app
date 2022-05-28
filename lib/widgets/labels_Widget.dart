import 'package:flutter/material.dart';

class Labels extends StatelessWidget {

  final String route;
  final String textocomun;
  final String textAzul;

  const Labels({super.key, required this.route, required this.textocomun, required this.textAzul});



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(textocomun,
        style: 
        TextStyle(
          color: Colors.black54, 
          fontSize: 15, 
          fontWeight: FontWeight.w300
          ),),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, route);
            },
            child: Text(textAzul,
            style: TextStyle(
              color: Colors.blue[600], 
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            ),
          )
      ],),
    );
  }
}