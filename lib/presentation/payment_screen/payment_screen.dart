import 'bloc/payment_bloc.dart';
import 'models/payment_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:castillejos_famania_s_application2/presentation/payment_success_dialog/payment_success_dialog.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentBloc>(
        create: (context) =>
            PaymentBloc(PaymentState(paymentModelObj: PaymentModel()))
              ..add(PaymentInitialEvent()),
        child: PaymentScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<PaymentBloc, PaymentState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 22.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15.v),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 20.v,
                                      width: 16.h,
                                      margin: EdgeInsets.only(
                                          top: 2.v, bottom: 5.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                    height: 8.adaptSize,
                                                    width: 8.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        top: 4.v),
                                                    decoration: BoxDecoration(
                                                        color: appTheme
                                                            .black900,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    4.h)))),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorBlack90020x16,
                                                height: 20.v,
                                                width: 16.h,
                                                alignment: Alignment.center)
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(left: 17.h),
                                      child: Text("msg_shipping_address".tr,
                                          style: theme.textTheme.titleLarge))
                                ])),
                        SizedBox(height: 9.v),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 47.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 1.v),
                                          child: Text("lbl_direccion".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Text("lbl_change".tr,
                                          style: theme.textTheme.bodyMedium)
                                    ]))),
                        Padding(
                            padding: EdgeInsets.only(left: 48.h),
                            child: Text("msg_detalles_de_direccion".tr,
                                style: theme.textTheme.bodySmall)),
                        SizedBox(height: 33.v),
                        Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgIconamoonDeliveryBold,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 1.v, bottom: 2.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("lbl_delivery_method".tr,
                                      style: theme.textTheme.titleLarge))
                            ])),
                        SizedBox(height: 36.v),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 28.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle32,
                                          height: 22.v,
                                          width: 59.h),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle33,
                                          height: 22.v,
                                          width: 59.h),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle34,
                                          height: 22.v,
                                          width: 59.h)
                                    ]))),
                        SizedBox(height: 14.v),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 44.h, right: 49.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("lbl_78".tr,
                                          style: theme.textTheme.labelLarge),
                                      Spacer(flex: 51),
                                      Text("lbl_502".tr,
                                          style: theme.textTheme.labelLarge),
                                      Spacer(flex: 48),
                                      Text("lbl_100".tr,
                                          style: theme.textTheme.labelLarge)
                                    ]))),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(left: 33.h, right: 44.h),
                            child: Row(children: [
                              Text("lbl_8_10_days".tr,
                                  style: theme.textTheme.bodySmall),
                              Spacer(flex: 52),
                              Text("lbl_15_20_days".tr,
                                  style: theme.textTheme.bodySmall),
                              Spacer(flex: 47),
                              Text("lbl_5_7days".tr,
                                  style: theme.textTheme.bodySmall)
                            ])),
                        SizedBox(height: 48.v),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgMaterialSymbolBlack900,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 1.v, bottom: 2.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("lbl_payment_methods".tr,
                                      style: theme.textTheme.titleLarge))
                            ])),
                        SizedBox(height: 47.v),
                        Padding(
                            padding: EdgeInsets.only(right: 51.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      height: 37.v,
                                      width: 163.h,
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text("lbl_5152".tr,
                                                    style: theme
                                                        .textTheme.labelLarge)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle35,
                                                height: 37.v,
                                                width: 74.h,
                                                alignment: Alignment.centerLeft)
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 10.v, bottom: 8.v),
                                      child: Text("lbl_change".tr,
                                          style: theme.textTheme.bodyMedium))
                                ])),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h, right: 36.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_items".tr,
                                      style: CustomTextStyles.bodyLarge16),
                                  Text("lbl_210_00".tr,
                                      style: CustomTextStyles.bodyLarge16)
                                ])),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h, right: 46.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 6.v),
                                      child: Text("lbl_delivery".tr,
                                          style: CustomTextStyles.bodyLarge16)),
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 6.v),
                                      child: Text("lbl_78_00".tr,
                                          style: CustomTextStyles.bodyLarge16))
                                ])),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(right: 43.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_total_price".tr,
                                      style: theme.textTheme.titleLarge),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 2.v, bottom: 3.v),
                                      child: Text("lbl_288_00".tr,
                                          style:
                                              CustomTextStyles.titleMedium16))
                                ]))
                      ])),
              bottomNavigationBar: _buildPay(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 70.v,
        centerTitle: true,
        title: AppbarTitle(
            text: "lbl_favorite".tr,
            margin: EdgeInsets.only(top: 6.v, bottom: 30.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIcOutlineNotifications,
              margin: EdgeInsets.fromLTRB(11.h, 18.v, 11.h, 27.v))
        ],
        styleType: Style.bgGradientnameblack900nameblack900opacity0);
  }

  /// Section Widget
  Widget _buildPay(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_pay".tr,
        margin: EdgeInsets.only(left: 35.h, right: 35.h, bottom: 17.v),
        onPressed: () {
          onTapPay(context);
        });
  }

  /// Displays a dialog with the [PaymentSuccessDialog] content.
  onTapPay(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: PaymentSuccessDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
