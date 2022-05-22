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
            RaisedButton(onPressed: (){
              print(emailCtrl.text);
              print(passCtrl.text);
            })
        ],
      ),
    );
  }
}

class Labels extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text('¿No tienes cuenta?', style: 
        TextStyle(
          color: Colors.black54, 
          fontSize: 15, 
          fontWeight: FontWeight.w300
          ),),
          SizedBox(height: 10,),
          Text('Crea una ahora!',
          style: TextStyle(
            color: Colors.blue[600], 
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          )
      ],),
    );
  }
}