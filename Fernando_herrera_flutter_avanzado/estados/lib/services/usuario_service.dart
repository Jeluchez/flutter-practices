import 'package:estados/models/usuario.dart';
import 'package:flutter/cupertino.dart';

class UsuarioService with ChangeNotifier {
  Usuario? _usuario;
  Usuario get usuario => _usuario!;
  bool get existeUsuario => _usuario != null ? true : false;

  set usuario(Usuario user) {
    _usuario = user;
    notifyListeners();
  }

  void changeAge(int edad) {
    _usuario?.edad = edad;
    notifyListeners();
  }

  void removeUser() {
    _usuario = null;
    notifyListeners();
  }

  void addProfesion(String pro) {
    _usuario!.profesiones!.add(pro);
    notifyListeners();
  }
}
