import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/categories_selection_bottomsheet/models/categories_selection_model.dart';
part 'categories_selection_event.dart';
part 'categories_selection_state.dart';

/// A bloc that manages the state of a CategoriesSelection according to the event that is dispatched to it.
class CategoriesSelectionBloc
    extends Bloc<CategoriesSelectionEvent, CategoriesSelectionState> {
  CategoriesSelectionBloc(CategoriesSelectionState initialState)
      : super(initialState) {
    on<CategoriesSelectionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoriesSelectionInitialEvent event,
    Emitter<CategoriesSelectionState> emit,
  ) async {}
}
