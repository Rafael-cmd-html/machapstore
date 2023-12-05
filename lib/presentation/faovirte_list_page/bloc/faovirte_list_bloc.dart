import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/faovirte_list_page/models/faovirte_list_model.dart';
part 'faovirte_list_event.dart';
part 'faovirte_list_state.dart';

/// A bloc that manages the state of a FaovirteList according to the event that is dispatched to it.
class FaovirteListBloc extends Bloc<FaovirteListEvent, FaovirteListState> {
  FaovirteListBloc(FaovirteListState initialState) : super(initialState) {
    on<FaovirteListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FaovirteListInitialEvent event,
    Emitter<FaovirteListState> emit,
  ) async {}
}
