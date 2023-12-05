import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/payment_methods_bottomsheet/models/payment_methods_model.dart';
part 'payment_methods_event.dart';
part 'payment_methods_state.dart';

/// A bloc that manages the state of a PaymentMethods according to the event that is dispatched to it.
class PaymentMethodsBloc
    extends Bloc<PaymentMethodsEvent, PaymentMethodsState> {
  PaymentMethodsBloc(PaymentMethodsState initialState) : super(initialState) {
    on<PaymentMethodsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentMethodsInitialEvent event,
    Emitter<PaymentMethodsState> emit,
  ) async {}
}
