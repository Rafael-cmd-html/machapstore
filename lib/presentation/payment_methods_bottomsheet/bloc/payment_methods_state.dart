// ignore_for_file: must_be_immutable

part of 'payment_methods_bloc.dart';

/// Represents the state of PaymentMethods in the application.
class PaymentMethodsState extends Equatable {
  PaymentMethodsState({this.paymentMethodsModelObj});

  PaymentMethodsModel? paymentMethodsModelObj;

  @override
  List<Object?> get props => [
        paymentMethodsModelObj,
      ];
  PaymentMethodsState copyWith({PaymentMethodsModel? paymentMethodsModelObj}) {
    return PaymentMethodsState(
      paymentMethodsModelObj:
          paymentMethodsModelObj ?? this.paymentMethodsModelObj,
    );
  }
}
