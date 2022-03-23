import 'dart:async';
import 'package:estados/models/usuario.dart';

class _UsuarioService {
  Usuario? _usuario;

  // structure the allow to re-render when a property data change
  final StreamController<Usuario> _usuarioStreamController =
      StreamController<Usuario>.broadcast();

  Usuario get usuario => _usuario!;
  bool get existeUsuario => (_usuario != null) ? true : false;

  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;

  void cargarUsuario(Usuario user) {
    _usuario = user;
    // Add user to the string, in order the when change data, the app be re-rendered
    _usuarioStreamController.add(user);
  }

  void cambiarEdad(int edad) {
    _usuario?.edad = edad;
    _usuarioStreamController.add(usuario);
  }

  dispose() {
    _usuarioStreamController.close();
  }
}

final usuarioService = _UsuarioService();
