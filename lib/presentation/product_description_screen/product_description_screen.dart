import '../product_description_screen/widgets/widget_item_widget.dart';
import 'bloc/product_description_bloc.dart';
import 'models/product_description_model.dart';
import 'models/widget_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDescriptionScreen extends StatelessWidget {
  const ProductDescriptionScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductDescriptionBloc>(
        create: (context) => ProductDescriptionBloc(ProductDescriptionState(
            productDescriptionModelObj: ProductDescriptionModel()))
          ..add(ProductDescriptionInitialEvent()),
        child: ProductDescriptionScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 451.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            _buildWidget(context),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: BlocBuilder<ProductDescriptionBloc,
                                        ProductDescriptionState>(
                                    builder: (context, state) {
                                  return Container(
                                      height: 15.v,
                                      margin: EdgeInsets.only(
                                          left: 148.h, bottom: 29.v),
                                      child: AnimatedSmoothIndicator(
                                          activeIndex: state.sliderIndex,
                                          count: state
                                                  .productDescriptionModelObj
                                                  ?.widgetItemList
                                                  .length ??
                                              0,
                                          axisDirection: Axis.horizontal,
                                          effect: ScrollingDotsEffect(
                                              spacing: 7,
                                              activeDotColor:
                                                  appTheme.gray50001,
                                              dotColor: theme.colorScheme
                                                  .onPrimaryContainer,
                                              dotHeight: 15.v,
                                              dotWidth: 15.h)));
                                }))
                          ])),
                      SizedBox(height: 9.v),
                      _buildRatingBar(context),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("msg_nombre_del_producto".tr,
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("lbl_689_99".tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("lbl_colors".tr,
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 1.v),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle30,
                                height: 53.v,
                                width: 64.h),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle31,
                                height: 53.v,
                                width: 64.h,
                                margin: EdgeInsets.only(left: 31.h))
                          ])),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("lbl_sizes".tr,
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Row(children: [
                            Text("lbl_s".tr,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                    decoration: TextDecoration.lineThrough)),
                            Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: Text("lbl_m".tr,
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                        decoration:
                                            TextDecoration.lineThrough))),
                            Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: Text("lbl_g".tr,
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                        decoration:
                                            TextDecoration.lineThrough))),
                            Padding(
                                padding: EdgeInsets.only(left: 22.h),
                                child: Text("lbl_xg".tr,
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                        decoration:
                                            TextDecoration.lineThrough)))
                          ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildAddToCart(context)));
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return BlocBuilder<ProductDescriptionBloc, ProductDescriptionState>(
        builder: (context, state) {
      return CarouselSlider.builder(
          options: CarouselOptions(
              height: 451.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                state.sliderIndex = index;
              }),
          itemCount:
              state.productDescriptionModelObj?.widgetItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            WidgetItemModel model =
                state.productDescriptionModelObj?.widgetItemList[index] ??
                    WidgetItemModel();
            return WidgetItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildRatingBar(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 15.h),
        child: Row(children: [
          CustomRatingBar(initialRating: 4, itemSize: 25),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 3.v, bottom: 3.v),
              child: Text("lbl_8_reviews".tr,
                  style: CustomTextStyles.bodyMediumExtraLight)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text("lbl_in_stock".tr,
                  style: CustomTextStyles.titleSmallLightgreenA700))
        ]));
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 29.h, right: 29.h, bottom: 24.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFluentArrowUp12Filled,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(top: 8.v, bottom: 7.v),
              onTap: () {
                onTapImgImage(context);
              }),
          Spacer(flex: 55),
          CustomElevatedButton(
              width: 150.h,
              text: "lbl_add_to_cart".tr,
              buttonTextStyle: theme.textTheme.titleSmall!),
          Spacer(flex: 44),
          CustomImageView(
              imagePath: ImageConstant.imgMaterialSymbol,
              height: 40.adaptSize,
              width: 40.adaptSize)
        ]));
  }

  onTapImgImage(BuildContext context) {
    // TODO: implement Actions
  }
}
