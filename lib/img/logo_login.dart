import 'package:ant_app/widgets/custom_input.dart';
import 'package:flutter/material.dart';
class LogoLogin extends StatelessWidget {
  final double ancho;

  const LogoLogin({super.key, required this.ancho});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(width: ancho,image: AssetImage('assets/logoAnt.PNG')),
          ],
      ),
     
   );
  }
}