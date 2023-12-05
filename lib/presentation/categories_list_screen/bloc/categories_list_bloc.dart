import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/categories_list_screen/models/categories_list_model.dart';
part 'categories_list_event.dart';
part 'categories_list_state.dart';

/// A bloc that manages the state of a CategoriesList according to the event that is dispatched to it.
class CategoriesListBloc
    extends Bloc<CategoriesListEvent, CategoriesListState> {
  CategoriesListBloc(CategoriesListState initialState) : super(initialState) {
    on<CategoriesListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoriesListInitialEvent event,
    Emitter<CategoriesListState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      mujerController: TextEditingController(),
      pcsController: TextEditingController(),
      accesoriosController: TextEditingController(),
      hombreController: TextEditingController(),
    ));
  }
}
