import 'bloc/payment_methods_bloc.dart';
import 'models/payment_methods_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentMethodsBottomsheet extends StatelessWidget {
  const PaymentMethodsBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentMethodsBloc>(
      create: (context) => PaymentMethodsBloc(PaymentMethodsState(
        paymentMethodsModelObj: PaymentMethodsModel(),
      ))
        ..add(PaymentMethodsInitialEvent()),
      child: PaymentMethodsBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaterialSymbolBlack900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "lbl_payment_methods".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 47.v),
          Padding(
            padding: EdgeInsets.only(right: 59.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 37.v,
                  width: 163.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl_5152".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle35,
                        height: 37.v,
                        width: 74.h,
                        alignment: Alignment.centerLeft,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    "lbl_change".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 235.v),
          CustomElevatedButton(
            height: 51.v,
            width: 203.h,
            text: "lbl_change2".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL25,
            alignment: Alignment.center,
          ),
          SizedBox(height: 28.v),
        ],
      ),
    );
  }
}
