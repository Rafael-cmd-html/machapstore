// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [payment_methods_updated_dialog],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentMethodsUpdatedModel extends Equatable {
  PaymentMethodsUpdatedModel() {}

  PaymentMethodsUpdatedModel copyWith() {
    return PaymentMethodsUpdatedModel();
  }

  @override
  List<Object?> get props => [];
}
