import 'bloc/init_page_bloc.dart';
import 'models/init_page_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class InitPageScreen extends StatelessWidget {
  const InitPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<InitPageBloc>(
        create: (context) =>
            InitPageBloc(InitPageState(initPageModelObj: InitPageModel()))
              ..add(InitPageInitialEvent()),
        child: InitPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<InitPageBloc, InitPageState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray700,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.h, vertical: 47.v),
                  child: Column(children: [
                    SizedBox(height: 22.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage1,
                        height: 73.v,
                        width: 325.h),
                    SizedBox(height: 88.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgMachape1,
                        height: 382.v,
                        width: 386.h,
                        onTap: () {
                          onTapImgMachapeOne(context);
                        }),
                    SizedBox(height: 73.v),
                    CustomElevatedButton(
                        height: 48.v,
                        width: 254.h,
                        text: "lbl_log_in".tr,
                        buttonStyle: CustomButtonStyles.fillBlack,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumOnPrimaryContainer),
                    SizedBox(height: 40.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_don_t_have_an_account2".tr,
                              style: CustomTextStyles.bodyLargeRegular),
                          TextSpan(text: "  ".tr),
                          TextSpan(
                              text: "lbl_sing_up".tr,
                              style: CustomTextStyles.bodyLargeLightblueA700
                                  .copyWith(
                                      decoration: TextDecoration.underline))
                        ]),
                        textAlign: TextAlign.left)
                  ]))));
    });
  }

  onTapImgMachapeOne(BuildContext context) {
    // TODO: implement Actions
  }
}
