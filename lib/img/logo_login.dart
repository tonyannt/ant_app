import 'package:ant_app/widgets/custom_input.dart';
import 'package:flutter/material.dart';
class LogoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(width: 170,image: AssetImage('assets/logoAnt.PNG')),
          ],
      ),
     
   );
  }
}