import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/sign_in_page/models/sign_in_model.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

/// A bloc that manages the state of a SignIn according to the event that is dispatched to it.
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(SignInState initialState) : super(initialState) {
    on<SignInInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignInInitialEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(
      nombreController: TextEditingController(),
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }

  String? validateEmail(String email) {
    if (email.isEmpty) {
      return 'El correo electrónico no puede estar vacío';
    } else if (!RegExp(r'^[a-zA-Z0-9_]+@[a-zA-Z0-9]+\.[a-zA-Z]+(\.[a-zA-Z]+)?$')
        .hasMatch(email)) {
      return 'Ingresa un correo electrónico válido';
    }
    return null;
  }

  String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'La contraseña no puede estar vacía';
    } else if (password.length > 8) {
      return 'La contraseña no puede tener más de 8 caracteres';
    }
    return null;
  }
}
