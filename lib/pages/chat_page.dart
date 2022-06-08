import 'dart:io';
import 'dart:ui';

import 'package:ant_app/widgets/chat_mensaje.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {


  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>  with TickerProviderStateMixin{//El with se necesita para trabajar con animaciones

  List<ChatMensaje> _mensajes=[];

  final _textController = TextEditingController();
  final _focusNode = FocusNode();
  bool _estaEcribiendo=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Text('Ja', style: TextStyle(fontSize: 12),),
              backgroundColor: Colors.blue[100],
            ),
            SizedBox(width: 10,),
            Text('Jazmin Diaz', style: TextStyle(color: Colors.black87, fontSize: 12),)
          ],
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder
              (
                physics: BouncingScrollPhysics(),
                itemCount: _mensajes.length,
                itemBuilder: (context, index) => _mensajes[index],
                reverse: true,//Hacer scroll para arriba

              ) 
              ),
              Divider(height: 1,),
              
              Container(
                color: Colors.white,
                child: _inputChat(),
              )
          ],
        ),
      ),
    );
  }

  Widget _inputChat(){
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmit,
                onChanged: (texto){
                  setState(() {
                    if(texto.trim().length>0){
                      _estaEcribiendo=true;
                    }else{
                      _estaEcribiendo=false;
                    }
                  });
                },
                decoration: InputDecoration.collapsed(hintText: 'Escribir mensaje'),
                focusNode: _focusNode,
              )
              ),
              //Boton de enviar
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                child: Platform.isIOS ? CupertinoButton(
                  child: Text('Enviar'), 
                  onPressed:_estaEcribiendo ?() => _handleSubmit(_textController.text):null,
                  ): Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    child: IconTheme(
                      data: IconThemeData( color: Colors.blue[400]),
                      child: IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        icon: Icon(Icons.send),
                        onPressed: _estaEcribiendo ?() => _handleSubmit(_textController.text):null,
                      ),
                    ),
                  )
              )
          ],
        ),
      ) 
      );
  }










  _handleSubmit (String texto){
      if(texto.trim().length==0) return;
      print(texto);
      _textController.clear();
      _focusNode.requestFocus();
      final nuevoMensaje = ChatMensaje(texto: texto, uid: '123', animationController: AnimationController(vsync: this, duration: Duration(milliseconds: 400)),);
      _mensajes.insert(0, nuevoMensaje);
      nuevoMensaje.animationController.forward();
      setState(() {
        _estaEcribiendo=false;
      });
  }

  @override
  void dispose() {
    // OffSocket

    //Limpiar controladores
    for(ChatMensaje mensaje in _mensajes){
      mensaje.animationController.dispose();
    }

    super.dispose();
  }
}