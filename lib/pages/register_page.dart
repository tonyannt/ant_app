import 'package:ant_app/img/logo_login.dart';
import 'package:ant_app/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import '../widgets/button_Widget.dart';
import '../widgets/form_Widget.dart';
import '../widgets/labels_Widget.dart';
class RegisterPage extends StatelessWidget {
  final passCtrl=TextEditingController();
  final emailCtrl=TextEditingController();
  final nameCtrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),//Animacion de rebote en iso y android
          child: Container(
            height: MediaQuery.of(context).size.height*0.9,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LogoLogin(ancho: 100),
                Text('REGISTRO', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                  child: CustomInput(
                    icon: Icons.perm_identity, 
                    placeholder: 'Nombre', 
                    textController: nameCtrl, 
                    keyboardtipe: TextInputType.name, 
                    isPassword: false),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                  child: CustomInput(
                      icon: Icons.mail_outline, 
                      placeholder: 'Email', 
                      textController: emailCtrl, 
                      keyboardtipe: TextInputType.emailAddress, 
                      isPassword: false),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                  child: CustomInput(
                    icon: Icons.lock_outline, 
                    placeholder: 'Password', 
                    textController: passCtrl, 
                    keyboardtipe: TextInputType.visiblePassword, 
                    isPassword: true),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: ButtonWidget(
                      texto: 'Registrar',
                      colorbutton: Colors.blue,
                      colortext: Colors.white, 
                      alto: 55,
                      onpressed: (){},
                      ),
                ),
                Labels(route: 'login', textocomun: '¿Ya tienes cuenta?', textAzul: 'Inicia Sesión ahora!'),
                Text('Terminos y condiciones de uso', style: TextStyle(fontWeight: FontWeight.w200),)
              ],
            ),
          ),
        ),
      ));
      
  }  
}
