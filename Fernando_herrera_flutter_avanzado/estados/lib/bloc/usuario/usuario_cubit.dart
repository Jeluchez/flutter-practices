import 'package:estados/models/usuario.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());

  void seleccionarUsuario(Usuario user) {
    emit(UsuarioActivo(user));
  }

  void changeEdad(int newAge) {
    final curState = state;
    if (curState is UsuarioActivo) {
      final newUser = curState.usuario.copyWith(edad: newAge);
      emit(UsuarioActivo(newUser));
    }
  }

  void agregarProfesion(String pro) {
    final curState = state;
    if (curState is UsuarioActivo) {
      final newProfesiones = [...?curState.usuario.profesiones, pro];
      final newUser = curState.usuario.copyWith(profesiones: newProfesiones);
      emit(UsuarioActivo(newUser));
    }
  }

  void borrarUsuario() {
    emit(UsuarioInitial());
  }
}
