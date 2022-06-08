import 'package:ant_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UsuariosPage extends StatefulWidget {
  UsuariosPage({Key? key}) : super(key: key);

  @override
  State<UsuariosPage> createState() => _UsuariosPageState();
}

class _UsuariosPageState extends State<UsuariosPage> {

  RefreshController _refreshController = RefreshController(initialRefresh: false);

  final usuarios = [
    Usuario(uid: '1', nombre: 'Maria', email: 'test@gmail.com', online: true),
    Usuario(uid: '2', nombre: 'Tony', email: 'test@gmail.com', online: false),
    Usuario(uid: '3', nombre: 'Jaz', email: 'test@gmail.com', online: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi nombre', style: TextStyle(color: Colors.black54),),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.exit_to_app, color: Colors.black54,),
          onPressed: (){},
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            //child: Icon(Icons.check_circle, color: Colors.blue,),
            child: Icon(Icons.offline_bolt, color: Colors.red,),
          )
        ],
      ),
      body: SmartRefresher(//Pull refresh
        controller: _refreshController,
        enablePullDown: true,
        onRefresh: _cargarUsuarios,
        header: WaterDropHeader(
          waterDropColor: Colors.blue,
          complete: Icon(Icons.check, color: Colors.blue[400],),
          
        ),
        child: _ListViewUsuarios(),
      ),
    );
  }





  ListView _ListViewUsuarios() {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (_,i)=>_usuarioListTile(usuarios[i]), 
      separatorBuilder: (_,i)=>Divider(), 
      itemCount: usuarios.length
      );
  }





  ListTile _usuarioListTile(Usuario usuario) {
    return ListTile(
        title: Text(usuario.nombre),
        leading: CircleAvatar(
          child: Text(usuario.nombre.substring(0,2)),
          backgroundColor: Colors.blue[100],
        ),
        trailing: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: usuario.online ? Colors.green[300]: Colors.red, borderRadius: BorderRadius.circular(100)
          ),
        ),
      );
  }

   _cargarUsuarios() async{
     //Esperar un segundo
      await Future.delayed(Duration(milliseconds: 1000));
      _refreshController.refreshCompleted();

  }
}