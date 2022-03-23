import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
            stream: usuarioService.usuarioStream,
            builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
              return snapshot.hasData
                  ? Text(usuarioService.usuario.nombre)
                  : const Text('Page2');
            }),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            child: const Text(
              'Establecer usuario',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {
              final newUser = Usuario(
                  nombre: 'Jose',
                  edad: 28,
                  profesiones: ['Docente', 'Developer']);
              usuarioService.cargarUsuario(newUser);
            },
          ),
          MaterialButton(
            child: const Text(
              'Cambiar edad',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {
              usuarioService.cambiarEdad(30);
            },
          ),
          MaterialButton(
            child: const Text(
              'Añadir Profesión',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {},
          ),
        ],
      )),
    );
  }
}

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({
//     Key? key,
//   })  : preferredSize = const Size.fromHeight(60.0),
//         super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(title: const Text('Page 1'));
//   }

//   @override
//   final Size preferredSize;
// }
