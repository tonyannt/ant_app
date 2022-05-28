import 'package:ant_app/img/logo_login.dart';
import 'package:flutter/material.dart';
import '../widgets/form_Widget.dart';
import '../widgets/labels_Widget.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                LogoLogin(),
                FormLogin(),
                Labels(route: 'register', textocomun: '¿No tienes cuenta?', textAzul: 'Crea una ahora!'),
                Text('Terminos y condiciones de uso', style: TextStyle(fontWeight: FontWeight.w200),)
              ],
            ),
          ),
        ),
      ));
      
  }  
}
