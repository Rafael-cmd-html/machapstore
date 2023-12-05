import 'bloc/edit_name_bloc.dart';
import 'models/edit_name_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EditNameBottomsheet extends StatelessWidget {
  const EditNameBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<EditNameBloc>(
      create: (context) => EditNameBloc(EditNameState(
        editNameModelObj: EditNameModel(),
      ))
        ..add(EditNameInitialEvent()),
      child: EditNameBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEtProfileMale,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 6.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  top: 2.v,
                ),
                child: Text(
                  "lbl_name".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 56.v),
          Container(
            height: 25.v,
            width: 247.h,
            margin: EdgeInsets.only(left: 12.h),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "lbl_nombre".tr,
                      style: CustomTextStyles.bodyLargeLight,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 247.h,
                    child: Divider(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: BlocSelector<EditNameBloc, EditNameState,
                TextEditingController?>(
              selector: (state) => state.apellidosController,
              builder: (context, apellidosController) {
                return CustomTextFormField(
                  width: 247.h,
                  controller: apellidosController,
                  hintText: "lbl_apellidos".tr,
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                );
              },
            ),
          ),
          SizedBox(height: 32.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: BlocSelector<EditNameBloc, EditNameState,
                TextEditingController?>(
              selector: (state) => state.correoelectronicoController,
              builder: (context, correoelectronicoController) {
                return CustomTextFormField(
                  width: 247.h,
                  controller: correoelectronicoController,
                  hintText: "msg_correo_electronico".tr,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                );
              },
            ),
          ),
          SizedBox(height: 111.v),
          CustomElevatedButton(
            height: 51.v,
            width: 203.h,
            text: "lbl_change2".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL25,
            alignment: Alignment.center,
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }
}
