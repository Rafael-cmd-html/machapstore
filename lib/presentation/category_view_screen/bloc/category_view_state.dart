// ignore_for_file: must_be_immutable

part of 'category_view_bloc.dart';

/// Represents the state of CategoryView in the application.
class CategoryViewState extends Equatable {
  CategoryViewState({
    this.searchController,
    this.categoryViewModelObj,
  });

  TextEditingController? searchController;

  CategoryViewModel? categoryViewModelObj;

  @override
  List<Object?> get props => [
        searchController,
        categoryViewModelObj,
      ];
  CategoryViewState copyWith({
    TextEditingController? searchController,
    CategoryViewModel? categoryViewModelObj,
  }) {
    return CategoryViewState(
      searchController: searchController ?? this.searchController,
      categoryViewModelObj: categoryViewModelObj ?? this.categoryViewModelObj,
    );
  }
}
