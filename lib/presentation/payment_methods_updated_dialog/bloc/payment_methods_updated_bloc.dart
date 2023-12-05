import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/payment_methods_updated_dialog/models/payment_methods_updated_model.dart';
part 'payment_methods_updated_event.dart';
part 'payment_methods_updated_state.dart';

/// A bloc that manages the state of a PaymentMethodsUpdated according to the event that is dispatched to it.
class PaymentMethodsUpdatedBloc
    extends Bloc<PaymentMethodsUpdatedEvent, PaymentMethodsUpdatedState> {
  PaymentMethodsUpdatedBloc(PaymentMethodsUpdatedState initialState)
      : super(initialState) {
    on<PaymentMethodsUpdatedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentMethodsUpdatedInitialEvent event,
    Emitter<PaymentMethodsUpdatedState> emit,
  ) async {}
}
