// ignore_for_file: must_be_immutable

part of 'categories_selection_bloc.dart';

/// Represents the state of CategoriesSelection in the application.
class CategoriesSelectionState extends Equatable {
  CategoriesSelectionState({this.categoriesSelectionModelObj});

  CategoriesSelectionModel? categoriesSelectionModelObj;

  @override
  List<Object?> get props => [
        categoriesSelectionModelObj,
      ];
  CategoriesSelectionState copyWith(
      {CategoriesSelectionModel? categoriesSelectionModelObj}) {
    return CategoriesSelectionState(
      categoriesSelectionModelObj:
          categoriesSelectionModelObj ?? this.categoriesSelectionModelObj,
    );
  }
}
