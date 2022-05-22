import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  
  final IconData icon;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyboardtipe;
  final bool isPassword;

  const CustomInput({super.key, required this.icon, required this.placeholder, required this.textController, required this.keyboardtipe, required this.isPassword});



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: Offset(0,5),
                  blurRadius: 5
                ),
              ],
            ),
            child: TextField(
              controller: this.textController,//Manda datos
              autocorrect: false,
              keyboardType: keyboardtipe,
              obscureText: isPassword,
              decoration: InputDecoration(
                prefixIcon: Icon(icon),
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                hintText: placeholder
              ),
           ),
          );
  }
}