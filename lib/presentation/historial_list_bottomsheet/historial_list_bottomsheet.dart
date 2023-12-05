import 'bloc/historial_list_bloc.dart';
import 'models/historial_list_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HistorialListBottomsheet extends StatelessWidget {
  const HistorialListBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HistorialListBloc>(
      create: (context) => HistorialListBloc(HistorialListState(
        historialListModelObj: HistorialListModel(),
      ))
        ..add(HistorialListInitialEvent()),
      child: HistorialListBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 44.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 114.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorBlack90018x20,
                      height: 18.v,
                      width: 20.h,
                      margin: EdgeInsets.only(
                        top: 3.v,
                        bottom: 6.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "lbl_mis_pedidos".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14.v),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle24,
                  height: 197.v,
                  width: 130.h,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "msg_nombre_del_producto".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "msg_descripccion_de".tr,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 63.v,
              bottom: 229.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_nombre_del_producto".tr,
                  style: theme.textTheme.labelLarge,
                ),
                Text(
                  "msg_descripccion_de".tr,
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 6.v),
                Text(
                  "msg_direccion_actual".tr,
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 11.v),
                Text(
                  "msg_direccion_actual".tr,
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 11.v),
                Text(
                  "lbl_detalles".tr,
                  style: theme.textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
