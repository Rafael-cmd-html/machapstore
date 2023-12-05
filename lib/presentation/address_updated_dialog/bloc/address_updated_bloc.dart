import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/address_updated_dialog/models/address_updated_model.dart';
part 'address_updated_event.dart';
part 'address_updated_state.dart';

/// A bloc that manages the state of a AddressUpdated according to the event that is dispatched to it.
class AddressUpdatedBloc
    extends Bloc<AddressUpdatedEvent, AddressUpdatedState> {
  AddressUpdatedBloc(AddressUpdatedState initialState) : super(initialState) {
    on<AddressUpdatedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddressUpdatedInitialEvent event,
    Emitter<AddressUpdatedState> emit,
  ) async {}
}
