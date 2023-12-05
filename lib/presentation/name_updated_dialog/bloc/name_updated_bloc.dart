import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/name_updated_dialog/models/name_updated_model.dart';
part 'name_updated_event.dart';
part 'name_updated_state.dart';

/// A bloc that manages the state of a NameUpdated according to the event that is dispatched to it.
class NameUpdatedBloc extends Bloc<NameUpdatedEvent, NameUpdatedState> {
  NameUpdatedBloc(NameUpdatedState initialState) : super(initialState) {
    on<NameUpdatedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NameUpdatedInitialEvent event,
    Emitter<NameUpdatedState> emit,
  ) async {}
}
