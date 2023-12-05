import 'bloc/payment_methods_updated_bloc.dart';
import 'models/payment_methods_updated_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PaymentMethodsUpdatedDialog extends StatelessWidget {
  const PaymentMethodsUpdatedDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentMethodsUpdatedBloc>(
        create: (context) => PaymentMethodsUpdatedBloc(
            PaymentMethodsUpdatedState(
                paymentMethodsUpdatedModelObj: PaymentMethodsUpdatedModel()))
          ..add(PaymentMethodsUpdatedInitialEvent()),
        child: PaymentMethodsUpdatedDialog());
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 113.v),
              Text("lbl_updated".tr, style: theme.textTheme.titleLarge),
              SizedBox(height: 31.v),
              Text("msg_the_payment_methods".tr,
                  style: theme.textTheme.bodySmall),
              SizedBox(height: 80.v),
              CustomElevatedButton(
                  text: "lbl_go_home".tr,
                  margin: EdgeInsets.only(right: 7.h),
                  onPressed: () {
                    onTapGoHome(context);
                  }),
              SizedBox(height: 16.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                      onTap: () {
                        onTapTxtGoToOrders(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 96.h),
                          child: Text("lbl_go_to_orders".tr,
                              style: CustomTextStyles.bodyLarge16))))
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
