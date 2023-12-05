import 'bloc/address_register_bloc.dart';
import 'models/address_register_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddressRegisterBottomsheet extends StatelessWidget {
  const AddressRegisterBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AddressRegisterBloc>(
      create: (context) => AddressRegisterBloc(AddressRegisterState(
        addressRegisterModelObj: AddressRegisterModel(),
      ))
        ..add(AddressRegisterInitialEvent()),
      child: AddressRegisterBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20.v,
                width: 16.h,
                margin: EdgeInsets.only(
                  top: 3.v,
                  bottom: 4.v,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(top: 4.v),
                        decoration: BoxDecoration(
                          color: appTheme.black900,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 20.v,
                        width: 16.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorBlack90020x16,
                              height: 20.v,
                              width: 16.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 20.v,
                                width: 16.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        height: 8.adaptSize,
                                        width: 8.adaptSize,
                                        margin: EdgeInsets.only(top: 4.v),
                                        decoration: BoxDecoration(
                                          color: appTheme.black900,
                                          borderRadius: BorderRadius.circular(
                                            4.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgVectorBlack90020x16,
                                      height: 20.v,
                                      width: 16.h,
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 28.v,
                width: 165.h,
                margin: EdgeInsets.only(left: 9.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "msg_shipping_address".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "msg_shipping_address".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 56.v),
          SizedBox(
            height: 25.v,
            width: 247.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "lbl_calle_principal".tr,
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
          SizedBox(height: 29.v),
          Padding(
            padding: EdgeInsets.only(right: 93.h),
            child: BlocSelector<AddressRegisterBloc, AddressRegisterState,
                TextEditingController?>(
              selector: (state) => state.numExteriorController,
              builder: (context, numExteriorController) {
                return CustomTextFormField(
                  controller: numExteriorController,
                  hintText: "lbl_num_exterior".tr,
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                );
              },
            ),
          ),
          SizedBox(height: 34.v),
          Padding(
            padding: EdgeInsets.only(right: 93.h),
            child: BlocSelector<AddressRegisterBloc, AddressRegisterState,
                TextEditingController?>(
              selector: (state) => state.codigoPostalController,
              builder: (context, codigoPostalController) {
                return CustomTextFormField(
                  controller: codigoPostalController,
                  hintText: "lbl_codigo_postal".tr,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.h),
                );
              },
            ),
          ),
          SizedBox(height: 110.v),
          CustomElevatedButton(
            height: 51.v,
            width: 203.h,
            text: "lbl_change2".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL25,
            alignment: Alignment.center,
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
