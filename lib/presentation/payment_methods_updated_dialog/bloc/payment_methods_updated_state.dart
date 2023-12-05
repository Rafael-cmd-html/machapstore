// ignore_for_file: must_be_immutable

part of 'payment_methods_updated_bloc.dart';

/// Represents the state of PaymentMethodsUpdated in the application.
class PaymentMethodsUpdatedState extends Equatable {
  PaymentMethodsUpdatedState({this.paymentMethodsUpdatedModelObj});

  PaymentMethodsUpdatedModel? paymentMethodsUpdatedModelObj;

  @override
  List<Object?> get props => [
        paymentMethodsUpdatedModelObj,
      ];
  PaymentMethodsUpdatedState copyWith(
      {PaymentMethodsUpdatedModel? paymentMethodsUpdatedModelObj}) {
    return PaymentMethodsUpdatedState(
      paymentMethodsUpdatedModelObj:
          paymentMethodsUpdatedModelObj ?? this.paymentMethodsUpdatedModelObj,
    );
  }
}
