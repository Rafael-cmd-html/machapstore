import 'bloc/faovirte_list_bloc.dart';
import 'models/faovirte_list_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FaovirteListPage extends StatelessWidget {
  const FaovirteListPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FaovirteListBloc>(
      create: (context) => FaovirteListBloc(FaovirteListState(
        faovirteListModelObj: FaovirteListModel(),
      ))
        ..add(FaovirteListInitialEvent()),
      child: FaovirteListPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FaovirteListBloc, FaovirteListState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 17.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.v),
                  _buildItemsCounter(context),
                  SizedBox(height: 33.v),
                  _buildEightySeven(context),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 107.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomRatingBar(
                          initialRating: 4,
                        ),
                        CustomRatingBar(
                          initialRating: 2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 41.h,
                    ),
                    child: _buildDescripccionDe(
                      context,
                      descripccionDe: "msg_nombre_del_producto".tr,
                      descripccionDe1: "msg_nombre_del_producto".tr,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 41.h,
                    ),
                    child: _buildDescripccionDe(
                      context,
                      descripccionDe: "msg_descripccion_de".tr,
                      descripccionDe1: "msg_descripccion_de".tr,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 97.h,
                    ),
                    child: _buildPrice(
                      context,
                      price: "lbl_45".tr,
                      oldPrice: "lbl_90".tr,
                      price1: "lbl_45".tr,
                      oldPrice1: "lbl_90".tr,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildEightyEight(context),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 41.h,
                    ),
                    child: _buildDescripccionDe(
                      context,
                      descripccionDe: "msg_nombre_del_producto".tr,
                      descripccionDe1: "msg_nombre_del_producto".tr,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 41.h,
                    ),
                    child: _buildDescripccionDe(
                      context,
                      descripccionDe: "msg_descripccion_de".tr,
                      descripccionDe1: "msg_descripccion_de".tr,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 97.h,
                    ),
                    child: _buildPrice(
                      context,
                      price: "lbl_45".tr,
                      oldPrice: "lbl_90".tr,
                      price1: "lbl_45".tr,
                      oldPrice1: "lbl_90".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 70.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_favorite".tr,
        margin: EdgeInsets.only(
          top: 6.v,
          bottom: 30.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIcOutlineNotifications,
          margin: EdgeInsets.fromLTRB(11.h, 18.v, 11.h, 27.v),
        ),
      ],
      styleType: Style.bgGradientnameblack900nameblack900opacity0,
    );
  }

  /// Section Widget
  Widget _buildItemsCounter(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 38.h),
      child: Row(
        children: [
          Text(
            "lbl_210_items".tr,
            style: CustomTextStyles.titleMedium16,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_short_by".tr,
              style: CustomTextStyles.bodyMediumExtraLight,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_featured".tr,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEightySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 198.v,
            width: 140.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle24,
                  height: 197.v,
                  width: 130.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 58.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Text(
                      "lbl_50".tr,
                      style: CustomTextStyles.labelMediumOnPrimaryContainer,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMaterialSymbolPrimary,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 3.v),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 198.v,
            width: 165.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 197.v,
                    width: 162.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle25,
                          height: 197.v,
                          width: 162.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMaterialSymbolPrimary,
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(
                            right: 10.h,
                            bottom: 3.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 58.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Text(
                      "lbl_50".tr,
                      style: CustomTextStyles.labelMediumOnPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 215.v,
            width: 138.h,
            margin: EdgeInsets.only(top: 1.v),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle24,
                  height: 197.v,
                  width: 130.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 3.v),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 58.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Text(
                      "lbl_50".tr,
                      style: CustomTextStyles.labelMediumOnPrimaryContainer,
                    ),
                  ),
                ),
                CustomRatingBar(
                  alignment: Alignment.bottomLeft,
                  initialRating: 4,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMaterialSymbolPrimary,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 201.v,
                width: 166.h,
                margin: EdgeInsets.only(left: 2.h),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 197.v,
                        width: 162.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle25,
                              height: 197.v,
                              width: 162.h,
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorPrimary,
                              height: 20.v,
                              width: 22.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(
                                right: 13.h,
                                bottom: 4.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 58.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10,
                        ),
                        child: Text(
                          "lbl_50".tr,
                          style: CustomTextStyles.labelMediumOnPrimaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomRatingBar(
                initialRating: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDescripccionDe(
    BuildContext context, {
    required String descripccionDe,
    required String descripccionDe1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          descripccionDe,
          style: theme.textTheme.labelMedium!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          descripccionDe1,
          style: theme.textTheme.labelMedium!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPrice(
    BuildContext context, {
    required String price,
    required String oldPrice,
    required String price1,
    required String oldPrice1,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 9.v),
          child: Text(
            price,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 9.v,
          ),
          child: Text(
            oldPrice,
            style: theme.textTheme.bodyLarge!.copyWith(
              decoration: TextDecoration.lineThrough,
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 9.v),
          child: Text(
            price1,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 9.v,
          ),
          child: Text(
            oldPrice1,
            style: theme.textTheme.bodyLarge!.copyWith(
              decoration: TextDecoration.lineThrough,
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
