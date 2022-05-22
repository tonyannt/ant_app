import 'package:ant_app/img/logo_login.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LogoLogin(),
            FormLogin(),
            Labels(),
            Text('Terminos y condiciones de uso', style: TextStyle(fontWeight: FontWeight.w200),)
        
          ],
        ),
      ));
      
  }  
}
