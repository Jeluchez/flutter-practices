import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Page 1')),
        body: StreamBuilder(
          stream: usuarioService.usuarioStream,
          builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
            return snapshot.hasData
                ? InformacionUsuario(usuario: snapshot.data as Usuario)
                : const Center(
                    child: Text('No hay información del usuario'),
                  );
          },
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.accessibility_new),
            onPressed: () => Navigator.pushNamed(context, 'pagina2')));
  }
}

class InformacionUsuario extends StatelessWidget {
  Usuario usuario;

  InformacionUsuario({Key? key,  required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ListTile(title: Text('Nombre: ${usuario.nombre}')),
          ListTile(title: Text('Edad ${usuario.edad}')),
          const Text('Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const ListTile(title: Text('Profesion 1:')),
          const ListTile(title: Text('Profesion 2:')),
          const ListTile(title: Text('Profesion 3:'))
        ],
      ),
    );
  }
}
