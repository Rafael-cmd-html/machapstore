import 'bloc/profile_data_bloc.dart';
import 'models/profile_data_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileDataScreen extends StatelessWidget {
  ProfileDataScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileDataBloc>(
        create: (context) => ProfileDataBloc(
            ProfileDataState(profileDataModelObj: ProfileDataModel()))
          ..add(ProfileDataInitialEvent()),
        child: ProfileDataScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProfileDataBloc, ProfileDataState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildNombreDeUsuario(context),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 9.h, vertical: 2.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 26.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEtProfileMale,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin: EdgeInsets.only(top: 3.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text("lbl_name".tr,
                                                style:
                                                    theme.textTheme.titleLarge))
                                      ])),
                                  SizedBox(height: 27.v),
                                  Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMdiTelephone,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(bottom: 4.v)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtTelephoneNumber(context);
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text(
                                                "msg_telephone_number".tr,
                                                style: theme
                                                    .textTheme.titleLarge)))
                                  ]),
                                  SizedBox(height: 25.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 7.h),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorBlack90018x20,
                                                height: 18.v,
                                                width: 20.h,
                                                margin: EdgeInsets.only(
                                                    top: 1.v, bottom: 8.v)),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.h),
                                                child: Text(
                                                    "lbl_mis_pedidos".tr,
                                                    style: theme
                                                        .textTheme.titleLarge))
                                          ])),
                                  SizedBox(height: 29.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Row(children: [
                                        Container(
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 4.v),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMdiLogout,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      alignment:
                                                          Alignment.center),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMdiLogout,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      alignment:
                                                          Alignment.center)
                                                ])),
                                        Container(
                                            height: 28.v,
                                            width: 76.h,
                                            margin: EdgeInsets.only(left: 5.h),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                          "lbl_log_out".tr,
                                                          style: theme.textTheme
                                                              .titleLarge)),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                          "lbl_log_out".tr,
                                                          style: theme.textTheme
                                                              .titleLarge))
                                                ]))
                                      ])),
                                  Spacer(),
                                  Container(
                                      height: 22.v,
                                      width: 103.h,
                                      margin: EdgeInsets.only(left: 7.h),
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
                                ]))),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildIcRoundHome(context),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked));
    });
  }

  /// Section Widget
  Widget _buildNombreDeUsuario(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 168.v,
            width: 345.h,
            child: Stack(alignment: Alignment.center, children: [
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
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 33.h, vertical: 22.v),
                      decoration: AppDecoration.gradientBlackToBlack.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder84),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse14,
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                radius: BorderRadius.circular(25.h),
                                margin:
                                    EdgeInsets.only(top: 6.v, bottom: 66.v)),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 13.h, bottom: 68.v),
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
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildIcRoundHome(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTapTxtTelephoneNumber(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentScreen,
    );
  }
}
