import 'bloc/log_out_bloc.dart';
import 'models/log_out_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LogOutBloc>(
        create: (context) =>
            LogOutBloc(LogOutState(logOutModelObj: LogOutModel()))
              ..add(LogOutInitialEvent()),
        child: LogOutDialog());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: 349.h,
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 77.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 74.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 88.h),
                      child: Text("lbl_logged_out".tr,
                          style: theme.textTheme.titleLarge))),
              SizedBox(height: 31.v),
              Text("msg_you_ve_logged_out".tr,
                  style: theme.textTheme.bodySmall),
              SizedBox(height: 80.v),
              CustomElevatedButton(
                  text: "lbl_go_log_ind".tr,
                  margin: EdgeInsets.only(right: 7.h),
                  onPressed: () {
                    onTapGoLogInd(context);
                  })
            ]));
  }

  onTapGoLogInd(BuildContext context) {
    // TODO: implement Actions
  }
}
