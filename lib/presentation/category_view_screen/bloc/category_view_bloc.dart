import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/category_view_screen/models/category_view_model.dart';
part 'category_view_event.dart';
part 'category_view_state.dart';

/// A bloc that manages the state of a CategoryView according to the event that is dispatched to it.
class CategoryViewBloc extends Bloc<CategoryViewEvent, CategoryViewState> {
  CategoryViewBloc(CategoryViewState initialState) : super(initialState) {
    on<CategoryViewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoryViewInitialEvent event,
    Emitter<CategoryViewState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
