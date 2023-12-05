import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/edit_name_bottomsheet/models/edit_name_model.dart';
part 'edit_name_event.dart';
part 'edit_name_state.dart';

/// A bloc that manages the state of a EditName according to the event that is dispatched to it.
class EditNameBloc extends Bloc<EditNameEvent, EditNameState> {
  EditNameBloc(EditNameState initialState) : super(initialState) {
    on<EditNameInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditNameInitialEvent event,
    Emitter<EditNameState> emit,
  ) async {
    emit(state.copyWith(
      apellidosController: TextEditingController(),
      correoelectronicoController: TextEditingController(),
    ));
  }
}
