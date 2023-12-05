import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/core/utils/validation_functions.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (context) => SignInBloc(SignInState(
        signInModelObj: SignInModel(),
      ))
        ..add(SignInInitialEvent()),
      child: SignInPage(),
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray700,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillGray,
            child: Column(
              children: [
                // ...
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    right: 18.h,
                  ),
                  child: BlocSelector<SignInBloc, SignInState,
                      TextEditingController?>(
                    selector: (state) => state.emailController,
                    builder: (context, emailController) {
                      return CustomTextFormField(
                        controller: emailController,
                        hintText: "lbl_email".tr,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          final bloc = context.read<SignInBloc>();
                          if (value == null ||
                              bloc.validateEmail(value) != null) {
                            return bloc.validateEmail(value!) ??
                                'Ingrese un correo electrónico válido';
                          }
                          return null;
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                      );
                    },
                  ),
                ),
                // ...
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    right: 18.h,
                  ),
                  child: BlocSelector<SignInBloc, SignInState,
                      TextEditingController?>(
                    selector: (state) => state.passwordController,
                    builder: (context, passwordController) {
                      return CustomTextFormField(
                        controller: passwordController,
                        hintText: "lbl_password".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        validator: (value) {
                          final bloc = context.read<SignInBloc>();
                          if (value == null ||
                              bloc.validatePassword(value) != null) {
                            return bloc.validatePassword(value!) ??
                                'Ingrese una contraseña válida';
                          }
                          return null;
                        },
                        obscureText: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                      );
                    },
                  ),
                ),
                // ...
              ],
            ),
          ),
        ),
      ),
    );
  }
}
