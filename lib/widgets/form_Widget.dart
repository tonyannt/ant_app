import 'package:ant_app/widgets/button_Widget.dart';
import 'package:flutter/material.dart';

import 'custom_input.dart';

class FormLogin extends StatefulWidget {
  FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => FormLoginState();
}

class FormLoginState extends State<FormLogin> {
  final passCtrl=TextEditingController();
  final emailCtrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.mail_outline, 
            placeholder: 'Email', 
            textController: emailCtrl, 
            keyboardtipe: TextInputType.emailAddress, 
            isPassword: false),
            CustomInput(
            icon: Icons.lock_outline, 
            placeholder: 'Password', 
            textController: passCtrl, 
            keyboardtipe: TextInputType.visiblePassword, 
            isPassword: true),
          ButtonWidget(
            texto: 'Ingresar',
            colorbutton: Colors.blue,
            colortext: Colors.white, 
            alto: 55,
            onpressed: (){},)
        ],
      ),
    );
  }
}