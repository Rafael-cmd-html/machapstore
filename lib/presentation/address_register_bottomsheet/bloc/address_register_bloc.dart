import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/address_register_bottomsheet/models/address_register_model.dart';
part 'address_register_event.dart';
part 'address_register_state.dart';

/// A bloc that manages the state of a AddressRegister according to the event that is dispatched to it.
class AddressRegisterBloc
    extends Bloc<AddressRegisterEvent, AddressRegisterState> {
  AddressRegisterBloc(AddressRegisterState initialState) : super(initialState) {
    on<AddressRegisterInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddressRegisterInitialEvent event,
    Emitter<AddressRegisterState> emit,
  ) async {
    emit(state.copyWith(
      numExteriorController: TextEditingController(),
      codigoPostalController: TextEditingController(),
    ));
  }
}
