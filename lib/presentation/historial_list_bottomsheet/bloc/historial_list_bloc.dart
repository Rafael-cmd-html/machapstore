import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/historial_list_bottomsheet/models/historial_list_model.dart';
part 'historial_list_event.dart';
part 'historial_list_state.dart';

/// A bloc that manages the state of a HistorialList according to the event that is dispatched to it.
class HistorialListBloc extends Bloc<HistorialListEvent, HistorialListState> {
  HistorialListBloc(HistorialListState initialState) : super(initialState) {
    on<HistorialListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistorialListInitialEvent event,
    Emitter<HistorialListState> emit,
  ) async {}
}
