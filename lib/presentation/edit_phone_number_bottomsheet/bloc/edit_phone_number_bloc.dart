import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/edit_phone_number_bottomsheet/models/edit_phone_number_model.dart';
part 'edit_phone_number_event.dart';
part 'edit_phone_number_state.dart';

/// A bloc that manages the state of a EditPhoneNumber according to the event that is dispatched to it.
class EditPhoneNumberBloc
    extends Bloc<EditPhoneNumberEvent, EditPhoneNumberState> {
  EditPhoneNumberBloc(EditPhoneNumberState initialState) : super(initialState) {
    on<EditPhoneNumberInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditPhoneNumberInitialEvent event,
    Emitter<EditPhoneNumberState> emit,
  ) async {
    emit(state.copyWith(
      weburlController: TextEditingController(),
      nuevonumeroController: TextEditingController(),
    ));
  }
}
