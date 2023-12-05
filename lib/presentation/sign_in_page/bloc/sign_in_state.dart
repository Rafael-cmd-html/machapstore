// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

/// Represents the state of SignIn in the application.
class SignInState extends Equatable {
  SignInState({
    this.nombreController,
    this.emailController,
    this.passwordController,
    this.signInModelObj,
  });

  TextEditingController? nombreController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignInModel? signInModelObj;

  @override
  List<Object?> get props => [
        nombreController,
        emailController,
        passwordController,
        signInModelObj,
      ];
  SignInState copyWith({
    TextEditingController? nombreController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      nombreController: nombreController ?? this.nombreController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
