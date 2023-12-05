import '../models/inicioseven_item_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IniciosevenItemWidget extends StatelessWidget {
  IniciosevenItemWidget(
    this.iniciosevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IniciosevenItemModel iniciosevenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.v,
      width: 70.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: iniciosevenItemModelObj?.phones,
            height: 60.v,
            width: 70.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              iniciosevenItemModelObj.phones1!,
              style: CustomTextStyles.titleSmallOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
