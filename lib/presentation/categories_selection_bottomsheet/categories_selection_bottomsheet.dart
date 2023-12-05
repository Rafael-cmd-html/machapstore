import 'bloc/categories_selection_bloc.dart';
import 'models/categories_selection_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class CategoriesSelectionBottomsheet extends StatelessWidget {
  const CategoriesSelectionBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CategoriesSelectionBloc>(
        create: (context) => CategoriesSelectionBloc(CategoriesSelectionState(
            categoriesSelectionModelObj: CategoriesSelectionModel()))
          ..add(CategoriesSelectionInitialEvent()),
        child: CategoriesSelectionBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 3.v),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Text("lbl_fashion_hombre".tr,
                          style: theme.textTheme.titleLarge)),
                  SizedBox(height: 38.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtRopa(context);
                      },
                      child: Text("lbl_ropa".tr,
                          style: CustomTextStyles.labelLargeSemiBold)),
                  SizedBox(height: 23.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtZapatos(context);
                      },
                      child: Text("lbl_zapatos".tr,
                          style: CustomTextStyles.labelLargeSemiBold)),
                  SizedBox(height: 16.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtJoyeria(context);
                      },
                      child: Text("lbl_joyeria".tr,
                          style: CustomTextStyles.labelLargeSemiBold)),
                  SizedBox(height: 21.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtAccesorios(context);
                      },
                      child: Text("lbl_accesorios".tr,
                          style: CustomTextStyles.labelLargeSemiBold)),
                  SizedBox(height: 20.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtGorras(context);
                      },
                      child: Text("lbl_gorras".tr,
                          style: CustomTextStyles.labelLargeSemiBold)),
                  SizedBox(height: 20.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtSombreros(context);
                      },
                      child: Text("lbl_sombreros".tr,
                          style: CustomTextStyles.labelLargeSemiBold)),
                  SizedBox(height: 21.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtFashionMujer(context);
                      },
                      child: Text("lbl_fashion_mujer".tr,
                          style: CustomTextStyles.labelLargeSemiBold)),
                  SizedBox(height: 22.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtFashionJovenes(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("lbl_fashion_jovenes".tr,
                              style: CustomTextStyles.labelLargeSemiBold))),
                  SizedBox(height: 18.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtFashionNiOs(context);
                      },
                      child: Text("lbl_fashion_ni_os".tr,
                          style: CustomTextStyles.labelLargeSemiBold)),
                  SizedBox(height: 89.v)
                ])));
  }

  /// Navigates to the categoryViewScreen when the action is triggered.
  onTapTxtRopa(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categoryViewScreen,
    );
  }

  /// Navigates to the categoryViewScreen when the action is triggered.
  onTapTxtZapatos(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categoryViewScreen,
    );
  }

  /// Navigates to the categoryViewScreen when the action is triggered.
  onTapTxtJoyeria(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categoryViewScreen,
    );
  }

  /// Navigates to the categoryViewScreen when the action is triggered.
  onTapTxtAccesorios(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categoryViewScreen,
    );
  }

  /// Navigates to the categoryViewScreen when the action is triggered.
  onTapTxtGorras(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categoryViewScreen,
    );
  }

  /// Navigates to the categoryViewScreen when the action is triggered.
  onTapTxtSombreros(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categoryViewScreen,
    );
  }

  /// Navigates to the categoryViewScreen when the action is triggered.
  onTapTxtFashionMujer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categoryViewScreen,
    );
  }

  /// Navigates to the categoryViewScreen when the action is triggered.
  onTapTxtFashionJovenes(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categoryViewScreen,
    );
  }

  /// Navigates to the categoryViewScreen when the action is triggered.
  onTapTxtFashionNiOs(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categoryViewScreen,
    );
  }
}
