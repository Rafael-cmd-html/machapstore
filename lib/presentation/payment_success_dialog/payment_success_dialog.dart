import 'bloc/payment_success_bloc.dart';
import 'models/payment_success_model.dart';
import 'package:castillejos_famania_s_application2/core/app_export.dart';
import 'package:castillejos_famania_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PaymentSuccessDialog extends StatelessWidget {
  const PaymentSuccessDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentSuccessBloc>(
        create: (context) => PaymentSuccessBloc(
            PaymentSuccessState(paymentSuccessModelObj: PaymentSuccessModel()))
          ..add(PaymentSuccessInitialEvent()),
        child: PaymentSuccessDialog());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: 349.h,
        padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 41.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 105.v),
              Text("lbl_success".tr, style: theme.textTheme.titleLarge),
              SizedBox(height: 32.v),
              Text("msg_detalles_del_encio".tr,
                  style: theme.textTheme.bodySmall),
              SizedBox(height: 81.v),
              CustomElevatedButton(
                  text: "lbl_go_home".tr,
                  onPressed: () {
                    onTapGoHome(context);
                  }),
              SizedBox(height: 16.v),
              GestureDetector(
                  onTap: () {
                    onTapTxtGoToOrders(context);
                  },
                  child: Text("lbl_go_to_orders".tr,
                      style: CustomTextStyles.bodyLarge16))
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
