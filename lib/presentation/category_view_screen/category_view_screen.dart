import 'bloc/category_view_bloc.dart';
import 'models/category_view_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_title_searchview.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class CategoryViewScreen extends StatelessWidget {
  CategoryViewScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CategoryViewBloc>(
      create: (context) => CategoryViewBloc(CategoryViewState(
        categoryViewModelObj: CategoryViewModel(),
      ))
        ..add(CategoryViewInitialEvent()),
      child: CategoryViewScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 9.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        right: 45.h,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 43.h,
                            margin: EdgeInsets.only(bottom: 1.v),
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10,
                            ),
                            child: Text(
                              "lbl_todo".tr,
                              style:
                                  CustomTextStyles.labelLargeOnPrimaryContainer,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              top: 1.v,
                              bottom: 1.v,
                            ),
                            child: Text(
                              "lbl_playeras".tr,
                              style: CustomTextStyles.labelLargeSemiBold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 18.h,
                              top: 1.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_sudaderas".tr,
                              style: CustomTextStyles.labelLargeSemiBold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 1.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_jeans".tr,
                              style: CustomTextStyles.labelLargeSemiBold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 13.h,
                              top: 1.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_socks".tr,
                              style: CustomTextStyles.labelLargeSemiBold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 13.h,
                              top: 3.v,
                            ),
                            child: Text(
                              "lbl_cap".tr,
                              style: CustomTextStyles.labelLargeSemiBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),
                    _buildItemsCounter(context),
                    SizedBox(height: 7.v),
                    _buildMaterialSymbol2(context),
                    Padding(
                      padding: EdgeInsets.only(right: 106.h),
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
                      padding: EdgeInsets.only(right: 40.h),
                      child: _buildDescripccionDe(
                        context,
                        descripccionDe: "msg_nombre_del_producto".tr,
                        descripccionDe1: "msg_nombre_del_producto".tr,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40.h),
                      child: _buildDescripccionDe(
                        context,
                        descripccionDe: "msg_descripccion_de".tr,
                        descripccionDe1: "msg_descripccion_de".tr,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(right: 96.h),
                      child: _buildPrice(
                        context,
                        price: "lbl_45".tr,
                        oldPrice: "lbl_90".tr,
                        price1: "lbl_45".tr,
                        oldPrice1: "lbl_90".tr,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    _buildMaterialSymbol4(context),
                    Padding(
                      padding: EdgeInsets.only(right: 106.h),
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
                      padding: EdgeInsets.only(right: 40.h),
                      child: _buildDescripccionDe(
                        context,
                        descripccionDe: "msg_nombre_del_producto".tr,
                        descripccionDe1: "msg_nombre_del_producto".tr,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40.h),
                      child: _buildDescripccionDe(
                        context,
                        descripccionDe: "msg_descripccion_de".tr,
                        descripccionDe1: "msg_descripccion_de".tr,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(right: 96.h),
                      child: _buildPrice(
                        context,
                        price: "lbl_45".tr,
                        oldPrice: "lbl_90".tr,
                        price1: "lbl_45".tr,
                        oldPrice1: "lbl_90".tr,
                      ),
                    ),
                    SizedBox(height: 8.v),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildIcRoundHome(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgDashiconsMenu,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 20.v,
          bottom: 45.v,
        ),
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
            text: "lbl_ropa".tr,
            margin: EdgeInsets.symmetric(horizontal: 121.h),
          ),
          SizedBox(height: 7.v),
          BlocSelector<CategoryViewBloc, CategoryViewState,
              TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return AppbarTitleSearchview(
                hintText: "msg_what_your_looking".tr,
                controller: searchController,
              );
            },
          ),
        ],
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIcOutlineNotifications,
          margin: EdgeInsets.fromLTRB(9.h, 18.v, 11.h, 47.v),
        ),
      ],
      styleType: Style.bgGradientnameblack900nameblack900opacity0,
    );
  }

  /// Section Widget
  Widget _buildItemsCounter(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 39.h),
      child: Row(
        children: [
          Text(
            "lbl_210_items".tr,
            style: CustomTextStyles.titleMedium16,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "lbl_short_by".tr,
              style: CustomTextStyles.bodyMediumExtraLight,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 2.v,
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
  Widget _buildMaterialSymbol2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 198.v,
          width: 144.h,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle24,
                height: 197.v,
                width: 130.h,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMaterialSymbol,
                height: 26.v,
                width: 29.h,
                alignment: Alignment.bottomRight,
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
        SizedBox(
          height: 198.v,
          width: 165.h,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              _buildMaterialSymbol(context),
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
    );
  }

  /// Section Widget
  Widget _buildMaterialSymbol4(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 200.v,
          width: 142.h,
          margin: EdgeInsets.only(top: 1.v),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle24,
                height: 197.v,
                width: 130.h,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMaterialSymbol,
                height: 26.v,
                width: 29.h,
                alignment: Alignment.bottomRight,
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
        SizedBox(
          height: 201.v,
          width: 166.h,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              _buildMaterialSymbol(context),
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
    );
  }

  /// Section Widget
  Widget _buildIcRoundHome(BuildContext context) {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {},
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
  Widget _buildMaterialSymbol(BuildContext context) {
    return SizedBox(
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
            imagePath: ImageConstant.imgMaterialSymbol,
            height: 26.v,
            width: 29.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(right: 26.h),
          ),
        ],
      ),
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
