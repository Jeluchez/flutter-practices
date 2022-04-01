import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioCubit = context.watch<UsuarioCubit>();
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2')),
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
                nombre: 'Jose Luis',
                edad: 28,
                profesiones: ['Soccer Player'],
              );
              usuarioCubit.seleccionarUsuario(newUser);
            },
          ),
          MaterialButton(
            child: const Text(
              'Cambiar edad',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {
              usuarioCubit.changeEdad(40);
            },
          ),
          MaterialButton(
            child: const Text(
              'Añadir Profesión',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {
              usuarioCubit.agregarProfesion('Doctor');
            },
          ),
        ],
      )),
    );
  }
}
