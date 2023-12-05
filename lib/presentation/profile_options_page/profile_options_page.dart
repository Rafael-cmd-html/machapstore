import 'bloc/profile_options_bloc.dart';
import 'models/profile_options_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ProfileOptionsPage extends StatelessWidget {
  const ProfileOptionsPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileOptionsBloc>(
        create: (context) => ProfileOptionsBloc(
            ProfileOptionsState(profileOptionsModelObj: ProfileOptionsModel()))
          ..add(ProfileOptionsInitialEvent()),
        child: ProfileOptionsPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProfileOptionsBloc, ProfileOptionsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: Column(children: [
                    _buildNombreDeUsuario(context),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.h, vertical: 2.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 28.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: 20.v,
                                                width: 16.h,
                                                margin: EdgeInsets.only(
                                                    top: 3.v, bottom: 4.v),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                              height:
                                                                  8.adaptSize,
                                                              width:
                                                                  8.adaptSize,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 4.v),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .black900,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.h)))),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: SizedBox(
                                                              height: 20.v,
                                                              width: 16.h,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgVectorBlack90020x16,
                                                                        height: 20
                                                                            .v,
                                                                        width: 16
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child: SizedBox(
                                                                            height: 20.v,
                                                                            width: 16.h,
                                                                            child: Stack(alignment: Alignment.center, children: [
                                                                              Align(alignment: Alignment.topCenter, child: Container(height: 8.adaptSize, width: 8.adaptSize, margin: EdgeInsets.only(top: 4.v), decoration: BoxDecoration(color: appTheme.black900, borderRadius: BorderRadius.circular(4.h)))),
                                                                              CustomImageView(imagePath: ImageConstant.imgVectorBlack90020x16, height: 20.v, width: 16.h, alignment: Alignment.center)
                                                                            ])))
                                                                  ])))
                                                    ])),
                                            Container(
                                                height: 28.v,
                                                width: 165.h,
                                                margin:
                                                    EdgeInsets.only(left: 9.h),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "msg_shipping_address"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .titleLarge)),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "msg_shipping_address"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .titleLarge))
                                                    ]))
                                          ])),
                                  SizedBox(height: 26.v),
                                  Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 1.v, bottom: 2.v),
                                        child: _buildEighty(context,
                                            materialSymbol: ImageConstant
                                                .imgMaterialSymbolBlack900,
                                            materialSymbol1: ImageConstant
                                                .imgMaterialSymbolBlack900,
                                            onTapMaterialSymbol: () {
                                          onTapMaterialSymbol(context);
                                        })),
                                    Container(
                                        height: 28.v,
                                        width: 168.h,
                                        margin: EdgeInsets.only(left: 5.h),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapTxtPaymentMethods(
                                                            context);
                                                      },
                                                      child: Text(
                                                          "lbl_payment_methods"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .titleLarge))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                      "lbl_payment_methods".tr,
                                                      style: theme.textTheme
                                                          .titleLarge))
                                            ]))
                                  ]),
                                  SizedBox(height: 24.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Row(children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 3.v),
                                            child: _buildEighty(context,
                                                materialSymbol: ImageConstant
                                                    .imgMaterialSymbol,
                                                materialSymbol1: ImageConstant
                                                    .imgMaterialSymbol)),
                                        Container(
                                            height: 28.v,
                                            width: 85.h,
                                            margin: EdgeInsets.only(left: 2.h),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                          "lbl_favorites".tr,
                                                          style: theme.textTheme
                                                              .titleLarge)),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                          "lbl_favorites".tr,
                                                          style: theme.textTheme
                                                              .titleLarge))
                                                ]))
                                      ])),
                                  SizedBox(height: 31.v),
                                  Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 4.v),
                                        child: _buildEighty(context,
                                            materialSymbol:
                                                ImageConstant.imgMdiLogout,
                                            materialSymbol1:
                                                ImageConstant.imgMdiLogout)),
                                    Container(
                                        height: 28.v,
                                        width: 76.h,
                                        margin: EdgeInsets.only(left: 5.h),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text("lbl_log_out".tr,
                                                      style: theme.textTheme
                                                          .titleLarge)),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text("lbl_log_out".tr,
                                                      style: theme.textTheme
                                                          .titleLarge))
                                            ]))
                                  ]),
                                  Spacer(),
                                  Container(
                                      height: 22.v,
                                      width: 103.h,
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                    "lbl_privacy_policy".tr,
                                                    style: CustomTextStyles
                                                        .titleMedium16
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                    "lbl_privacy_policy".tr,
                                                    style: CustomTextStyles
                                                        .titleMedium16
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)))
                                          ]))
                                ])))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildNombreDeUsuario(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 168.v,
            width: 345.h,
            child: Stack(alignment: Alignment.bottomRight, children: [
              CustomAppBar(
                  height: 78.v,
                  leadingWidth: 83.h,
                  leading: AppbarLeadingCircleimage(
                      imagePath: ImageConstant.imgEllipse14,
                      margin: EdgeInsets.only(left: 33.h, top: 6.v)),
                  title: Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: Column(children: [
                        AppbarSubtitle(text: "msg_nombre_de_usuario".tr),
                        SizedBox(height: 4.v),
                        AppbarSubtitleOne(
                            text: "lbl_612_218_46_55".tr,
                            margin: EdgeInsets.only(right: 65.h))
                      ]))),
              Padding(
                  padding: EdgeInsets.only(right: 1.h, bottom: 27.v),
                  child: CustomIconButton(
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      padding: EdgeInsets.all(13.h),
                      alignment: Alignment.bottomRight,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgGroup72))),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 1.h, vertical: 22.v),
                      decoration: AppDecoration.gradientBlackToBlack.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder84),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 32.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse14,
                                          height: 50.adaptSize,
                                          width: 50.adaptSize,
                                          radius: BorderRadius.circular(25.h),
                                          margin: EdgeInsets.only(top: 6.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 13.h, bottom: 2.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("msg_nombre_de_usuario".tr,
                                                    style: CustomTextStyles
                                                        .titleLargeOnPrimaryContainer),
                                                SizedBox(height: 4.v),
                                                Text("lbl_612_218_46_55".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumOnPrimaryContainer)
                                              ]))
                                    ])),
                            SizedBox(height: 12.v),
                            CustomIconButton(
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                padding: EdgeInsets.all(13.h),
                                alignment: Alignment.centerRight,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup72)),
                            SizedBox(height: 4.v)
                          ])))
            ])));
  }

  /// Common widget
  Widget _buildEighty(
    BuildContext context, {
    required String materialSymbol,
    required String materialSymbol1,
    Function? onTapMaterialSymbol,
  }) {
    return SizedBox(
        height: 24.adaptSize,
        width: 24.adaptSize,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: materialSymbol,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
              onTap: () {
                onTapMaterialSymbol!.call();
              }),
          CustomImageView(
              imagePath: materialSymbol1,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center)
        ]));
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTapMaterialSymbol(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentScreen,
    );
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTapTxtPaymentMethods(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentScreen,
    );
  }
}
