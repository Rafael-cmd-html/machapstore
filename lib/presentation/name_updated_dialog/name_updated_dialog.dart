import 'bloc/name_updated_bloc.dart';
import 'models/name_updated_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class NameUpdatedDialog extends StatelessWidget {
  const NameUpdatedDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NameUpdatedBloc>(
        create: (context) => NameUpdatedBloc(
            NameUpdatedState(nameUpdatedModelObj: NameUpdatedModel()))
          ..add(NameUpdatedInitialEvent()),
        child: NameUpdatedDialog());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: 349.h,
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 38.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 113.v),
              Align(
                  alignment: Alignment.center,
                  child: Text("lbl_updated".tr,
                      style: theme.textTheme.titleLarge)),
              SizedBox(height: 31.v),
              Padding(
                  padding: EdgeInsets.only(left: 65.h),
                  child: Text("msg_the_name_has_been".tr,
                      style: theme.textTheme.bodySmall)),
              SizedBox(height: 80.v),
              CustomElevatedButton(
                  text: "lbl_go_home".tr,
                  margin: EdgeInsets.only(right: 7.h),
                  onPressed: () {
                    onTapGoHome(context);
                  }),
              SizedBox(height: 16.v),
              GestureDetector(
                  onTap: () {
                    onTapTxtGoToOrders(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 96.h),
                      child: Text("lbl_go_to_orders".tr,
                          style: CustomTextStyles.bodyLarge16)))
            ]));
  }

  onTapGoHome(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTapTxtGoToOrders(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentScreen,
    );
  }
}
