import 'bloc/categories_list_bloc.dart';
import 'models/categories_list_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/appbar_title_searchview.dart';
import 'package:castillejos_famania_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CategoriesListScreen extends StatelessWidget {
  CategoriesListScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CategoriesListBloc>(
      create: (context) => CategoriesListBloc(CategoriesListState(
        categoriesListModelObj: CategoriesListModel(),
      ))
        ..add(CategoriesListInitialEvent()),
      child: CategoriesListScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 28.v),
                child: Column(
                  children: [
                    _buildTelefonos(context),
                    SizedBox(height: 14.v),
                    _buildMujer(context),
                    SizedBox(height: 35.v),
                    _buildPcs(context),
                    SizedBox(height: 51.v),
                    _buildAccesorios(context),
                    SizedBox(height: 34.v),
                    _buildHombre(context),
                    SizedBox(height: 34.v),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildIcOutlineHome(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFluentArrowUp12FilledOnprimarycontainer,
        margin: EdgeInsets.only(
          left: 12.h,
          top: 12.v,
          bottom: 53.v,
        ),
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
            text: "lbl_catalogue".tr,
            margin: EdgeInsets.only(
              left: 79.h,
              right: 106.h,
            ),
          ),
          SizedBox(height: 8.v),
          BlocSelector<CategoriesListBloc, CategoriesListState,
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
      styleType: Style.bgGradientnameblack900nameblack900opacity0,
    );
  }

  /// Section Widget
  Widget _buildTelefonos(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 7.h),
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_telefonos".tr,
            style: theme.textTheme.titleLarge,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle14,
            height: 69.v,
            width: 87.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 9.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMujer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: BlocSelector<CategoriesListBloc, CategoriesListState,
          TextEditingController?>(
        selector: (state) => state.mujerController,
        builder: (context, mujerController) {
          return CustomTextFormField(
            controller: mujerController,
            hintText: "lbl_mujer".tr,
            hintStyle: theme.textTheme.titleLarge!,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 32.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
            filled: true,
            fillColor: theme.colorScheme.onPrimaryContainer,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPcs(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 8.h,
      ),
      child: BlocSelector<CategoriesListBloc, CategoriesListState,
          TextEditingController?>(
        selector: (state) => state.pcsController,
        builder: (context, pcsController) {
          return CustomTextFormField(
            controller: pcsController,
            hintText: "lbl_pc_s2".tr,
            hintStyle: theme.textTheme.titleLarge!,
            borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
            filled: true,
            fillColor: theme.colorScheme.onPrimaryContainer,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAccesorios(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 8.h,
      ),
      child: BlocSelector<CategoriesListBloc, CategoriesListState,
          TextEditingController?>(
        selector: (state) => state.accesoriosController,
        builder: (context, accesoriosController) {
          return CustomTextFormField(
            controller: accesoriosController,
            hintText: "lbl_accesorios".tr,
            hintStyle: theme.textTheme.titleLarge!,
            borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
            filled: true,
            fillColor: theme.colorScheme.onPrimaryContainer,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildHombre(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 8.h,
      ),
      child: BlocSelector<CategoriesListBloc, CategoriesListState,
          TextEditingController?>(
        selector: (state) => state.hombreController,
        builder: (context, hombreController) {
          return CustomTextFormField(
            controller: hombreController,
            hintText: "lbl_hombre".tr,
            hintStyle: theme.textTheme.titleLarge!,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 32.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
            filled: true,
            fillColor: theme.colorScheme.onPrimaryContainer,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildIcOutlineHome(BuildContext context) {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
