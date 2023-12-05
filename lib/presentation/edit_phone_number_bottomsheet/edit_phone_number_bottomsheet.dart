import 'bloc/edit_phone_number_bloc.dart';
import 'models/edit_phone_number_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EditPhoneNumberBottomsheet extends StatelessWidget {
  const EditPhoneNumberBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<EditPhoneNumberBloc>(
      create: (context) => EditPhoneNumberBloc(EditPhoneNumberState(
        editPhoneNumberModelObj: EditPhoneNumberModel(),
      ))
        ..add(EditPhoneNumberInitialEvent()),
      child: EditPhoneNumberBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 44.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMdiTelephone,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 4.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "msg_telephone_number2".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 54.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 99.h,
            ),
            child: BlocSelector<EditPhoneNumberBloc, EditPhoneNumberState,
                TextEditingController?>(
              selector: (state) => state.weburlController,
              builder: (context, weburlController) {
                return CustomTextFormField(
                  controller: weburlController,
                  hintText: "lbl_num_anterior".tr,
                  hintStyle: CustomTextStyles.bodyLargeLight,
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                );
              },
            ),
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 99.h,
            ),
            child: BlocSelector<EditPhoneNumberBloc, EditPhoneNumberState,
                TextEditingController?>(
              selector: (state) => state.nuevonumeroController,
              builder: (context, nuevonumeroController) {
                return CustomTextFormField(
                  controller: nuevonumeroController,
                  hintText: "lbl_nuevo_numero".tr,
                  hintStyle: CustomTextStyles.bodyLargeLight,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                );
              },
            ),
          ),
          SizedBox(height: 58.v),
          Divider(
            indent: 6.h,
            endIndent: 99.h,
          ),
          SizedBox(height: 111.v),
          CustomElevatedButton(
            height: 51.v,
            width: 203.h,
            text: "lbl_change2".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL25,
            alignment: Alignment.center,
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
