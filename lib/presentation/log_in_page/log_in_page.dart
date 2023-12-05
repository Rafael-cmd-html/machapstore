import 'bloc/log_in_bloc.dart';
import 'models/log_in_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/core/utils/validation_functions.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogInPage extends StatelessWidget {
  LogInPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInBloc>(
      create: (context) => LogInBloc(LogInState(
        logInModelObj: LogInModel(),
      ))
        ..add(LogInInitialEvent()),
      child: LogInPage(),
    );
  }

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
                SizedBox(height: 54.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.h),
                  child: Column(
                    children: [
                      Text(
                        "msg_welcome_to_machapstore".tr,
                        style: CustomTextStyles.titleMedium16,
                      ),
                      SizedBox(height: 13.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 17.h,
                          right: 18.h,
                        ),
                        child: BlocSelector<LogInBloc, LogInState,
                            TextEditingController?>(
                          selector: (state) => state.emailController,
                          builder: (context, emailController) {
                            return CustomTextFormField(
                              controller: emailController,
                              hintText: "lbl_email".tr,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "err_msg_please_enter_valid_email".tr;
                                }
                                return null;
                              },
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 5.h),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 34.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 17.h,
                          right: 18.h,
                        ),
                        child: BlocSelector<LogInBloc, LogInState,
                            TextEditingController?>(
                          selector: (state) => state.passwordController,
                          builder: (context, passwordController) {
                            return CustomTextFormField(
                              controller: passwordController,
                              hintText: "lbl_password".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
                                }
                                return null;
                              },
                              obscureText: true,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 5.h),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 46.v),
                      CustomElevatedButton(
                        height: 48.v,
                        text: "lbl_log_in".tr,
                        buttonStyle: CustomButtonStyles.fillBlack,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumOnPrimaryContainer,
                      ),
                      SizedBox(height: 46.v),
                      Text(
                        "msg_forgot_password".tr,
                        style: CustomTextStyles.bodyLargeRegular16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
