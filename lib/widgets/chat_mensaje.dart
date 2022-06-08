import 'package:flutter/material.dart';

class ChatMensaje extends StatelessWidget {
  final String texto;
  final String uid;
  final AnimationController animationController;

  const ChatMensaje({super.key, required this.texto, required this.uid, required this.animationController});


  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationController,
      child: SizeTransition(
        sizeFactor: CurvedAnimation(parent: animationController, curve: Curves.easeOut),
        child: Container(
          child: this.uid == '123' 
          ? _miMensaje()
          : _noMiMensaje()
        ),
      ),
    );
  }





  Widget _miMensaje(){
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(bottom: 8, left: 50, right: 10),
        padding: EdgeInsets.all(8),
        child: Text(this.texto, style: TextStyle(color:  Colors.white),),
        decoration: BoxDecoration(
          color: Color(0xff4D9EF6),
          borderRadius: BorderRadius.circular(20),
          
        ),
      ),
    );
  }

  Widget _noMiMensaje(){
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(bottom: 8, right: 50, left: 10),
        padding: EdgeInsets.all(8),
        child: Text(this.texto, style: TextStyle(color:  Colors.black87),),
        decoration: BoxDecoration(
          color: Color(0xffE4E5E8),
          borderRadius: BorderRadius.circular(20),
          
        ),
      ),
    );
  }
}