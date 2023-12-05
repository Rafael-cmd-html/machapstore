import '../home_page/widgets/inicioseven_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/inicioseven_item_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomePage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFashionSale(context),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text("lbl_catalogue".tr,
                              style: CustomTextStyles.titleMedium16)),
                      SizedBox(height: 12.v),
                      _buildInicioSeven(context),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("lbl_featured".tr,
                              style: CustomTextStyles.titleMedium16)),
                      SizedBox(height: 46.v),
                      _buildFifty(context),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h, right: 122.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomRatingBar(initialRating: 4),
                                CustomRatingBar(initialRating: 2)
                              ])),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h, right: 56.h),
                          child: _buildDescripccionDe(context,
                              descripccionDe: "msg_nombre_del_producto".tr,
                              descripccionDe1: "msg_nombre_del_producto".tr,
                              onTapDescripccionDe: () {
                            onTapTxtNombreDelProducto(context);
                          }, onTapDescripccionDe1: () {
                            onTapTxtNombreDelProducto1(context);
                          })),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h, right: 56.h),
                          child: _buildDescripccionDe(context,
                              descripccionDe: "msg_descripccion_de".tr,
                              descripccionDe1: "msg_descripccion_de".tr,
                              onTapDescripccionDe: () {
                            onTapTxtDescripccionDe(context);
                          }, onTapDescripccionDe1: () {
                            onTapTxtDescripccionDe1(context);
                          })),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h, right: 112.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtPrice(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 8.v),
                                        child: Text("lbl_45".tr,
                                            style:
                                                theme.textTheme.titleMedium))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtOldPrice(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.h, top: 8.v),
                                        child: Text("lbl_90".tr,
                                            style: theme.textTheme.bodyLarge!
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .lineThrough)))),
                                Spacer(),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtPrice1(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 8.v),
                                        child: Text("lbl_45".tr,
                                            style:
                                                theme.textTheme.titleMedium))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtOldPrice1(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.h, top: 8.v),
                                        child: Text("lbl_90".tr,
                                            style: theme.textTheme.bodyLarge!
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .lineThrough))))
                              ])),
                      SizedBox(height: 53.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildFashionSale(BuildContext context) {
    return SizedBox(
        height: 190.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 18.v),
                  decoration: AppDecoration.gradientBlackToBlack,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 9.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgIcOutlineNotifications,
                            height: 25.adaptSize,
                            width: 25.adaptSize)
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 107.v,
                  width: 339.h,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle7,
                        height: 107.v,
                        width: 339.h,
                        radius: BorderRadius.circular(20.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 12.h, right: 9.h, bottom: 9.v),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_fashion_sale".tr,
                                      style: theme.textTheme.headlineSmall),
                                  Text("lbl_see_more".tr,
                                      style:
                                          CustomTextStyles.bodyLargeYellowA400),
                                  SizedBox(height: 5.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Row(children: [
                                        SizedBox(
                                            height: 5.v,
                                            width: 36.h,
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                          height: 5.v,
                                                          width: 20.h,
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .onPrimaryContainer,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2.h)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          height: 5.v,
                                                          width: 25.h,
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .blueGray400,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2.h))))
                                                ])),
                                        Container(
                                            height: 5.v,
                                            width: 45.h,
                                            margin: EdgeInsets.only(left: 29.h),
                                            decoration: BoxDecoration(
                                                color: appTheme.blueGray10001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2.h))),
                                        Container(
                                            height: 5.v,
                                            width: 45.h,
                                            margin: EdgeInsets.only(left: 20.h),
                                            decoration: BoxDecoration(
                                                color: appTheme.blueGray10001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2.h))),
                                        Container(
                                            height: 5.v,
                                            width: 45.h,
                                            margin: EdgeInsets.only(left: 20.h),
                                            decoration: BoxDecoration(
                                                color: appTheme.blueGray10001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2.h))),
                                        Container(
                                            height: 5.v,
                                            width: 45.h,
                                            margin: EdgeInsets.only(left: 20.h),
                                            decoration: BoxDecoration(
                                                color: appTheme.blueGray10001,
                                                borderRadius:
                                                    BorderRadius.circular(2.h)))
                                      ]))
                                ])))
                  ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(left: 45.h, top: 50.v, right: 45.h),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v),
                  decoration: AppDecoration.fillGray300
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Text("msg_what_your_looking".tr,
                            style: CustomTextStyles.bodyLargeGray800)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildInicioSeven(BuildContext context) {
    return SizedBox(
        height: 60.v,
        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
            selector: (state) => state.homeModelObj,
            builder: (context, homeModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 15.h, right: 32.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 21.h);
                  },
                  itemCount: homeModelObj?.iniciosevenItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    IniciosevenItemModel model =
                        homeModelObj?.iniciosevenItemList[index] ??
                            IniciosevenItemModel();
                    return IniciosevenItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildFifty(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 210.v,
                      width: 141.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle24,
                            height: 197.v,
                            width: 130.h,
                            alignment: Alignment.bottomCenter),
                        CustomImageView(
                            imagePath: ImageConstant.imgMaterialSymbol,
                            height: 26.v,
                            width: 29.h,
                            alignment: Alignment.bottomRight,
                            onTap: () {
                              onTapImgMaterialSymbol(context);
                            }),
                        CustomElevatedButton(
                            height: 17.v,
                            width: 58.h,
                            text: "lbl_50".tr,
                            buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                            buttonTextStyle:
                                CustomTextStyles.labelMediumOnPrimaryContainer,
                            onPressed: () {
                              onTapFifty(context);
                            },
                            alignment: Alignment.topLeft)
                      ])),
                  SizedBox(
                      height: 210.v,
                      width: 167.h,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                                height: 197.v,
                                width: 162.h,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle25,
                                          height: 197.v,
                                          width: 162.h,
                                          alignment: Alignment.center,
                                          onTap: () {
                                            onTapImgImage(context);
                                          }),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgMaterialSymbol,
                                          height: 26.v,
                                          width: 29.h,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(right: 26.h))
                                    ]))),
                        CustomElevatedButton(
                            height: 17.v,
                            width: 58.h,
                            text: "lbl_50".tr,
                            buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                            buttonTextStyle:
                                CustomTextStyles.labelMediumOnPrimaryContainer,
                            alignment: Alignment.topLeft)
                      ]))
                ])));
  }

  /// Common widget
  Widget _buildDescripccionDe(
    BuildContext context, {
    required String descripccionDe,
    required String descripccionDe1,
    Function? onTapDescripccionDe,
    Function? onTapDescripccionDe1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(onTap: () {
        onTapDescripccionDe!.call();
      }),
      Text(descripccionDe,
          style:
              theme.textTheme.labelMedium!.copyWith(color: appTheme.black900)),
      GestureDetector(onTap: () {
        onTapDescripccionDe1!.call();
      }),
      Text(descripccionDe1,
          style:
              theme.textTheme.labelMedium!.copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the productDescriptionScreen when the action is triggered.
  onTapImgMaterialSymbol(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDescriptionScreen,
    );
  }

  /// Navigates to the productDescriptionScreen when the action is triggered.
  onTapFifty(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDescriptionScreen,
    );
  }

  /// Navigates to the productDescriptionScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDescriptionScreen,
    );
  }

  /// Navigates to the productDescriptionScreen when the action is triggered.
  onTapTxtNombreDelProducto(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDescriptionScreen,
    );
  }

  /// Navigates to the productDescriptionScreen when the action is triggered.
  onTapTxtNombreDelProducto1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDescriptionScreen,
    );
  }

  /// Navigates to the productDescriptionScreen when the action is triggered.
  onTapTxtDescripccionDe(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDescriptionScreen,
    );
  }

  /// Navigates to the productDescriptionScreen when the action is triggered.
  onTapTxtDescripccionDe1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDescriptionScreen,
    );
  }

  /// Navigates to the productDescriptionScreen when the action is triggered.
  onTapTxtPrice(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDescriptionScreen,
    );
  }

  /// Navigates to the productDescriptionScreen when the action is triggered.
  onTapTxtOldPrice(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDescriptionScreen,
    );
  }

  /// Navigates to the productDescriptionScreen when the action is triggered.
  onTapTxtPrice1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDescriptionScreen,
    );
  }

  /// Navigates to the productDescriptionScreen when the action is triggered.
  onTapTxtOldPrice1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDescriptionScreen,
    );
  }
}
