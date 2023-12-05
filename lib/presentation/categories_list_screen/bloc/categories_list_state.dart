// ignore_for_file: must_be_immutable

part of 'categories_list_bloc.dart';

/// Represents the state of CategoriesList in the application.
class CategoriesListState extends Equatable {
  CategoriesListState({
    this.searchController,
    this.mujerController,
    this.pcsController,
    this.accesoriosController,
    this.hombreController,
    this.categoriesListModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? mujerController;

  TextEditingController? pcsController;

  TextEditingController? accesoriosController;

  TextEditingController? hombreController;

  CategoriesListModel? categoriesListModelObj;

  @override
  List<Object?> get props => [
        searchController,
        mujerController,
        pcsController,
        accesoriosController,
        hombreController,
        categoriesListModelObj,
      ];
  CategoriesListState copyWith({
    TextEditingController? searchController,
    TextEditingController? mujerController,
    TextEditingController? pcsController,
    TextEditingController? accesoriosController,
    TextEditingController? hombreController,
    CategoriesListModel? categoriesListModelObj,
  }) {
    return CategoriesListState(
      searchController: searchController ?? this.searchController,
      mujerController: mujerController ?? this.mujerController,
      pcsController: pcsController ?? this.pcsController,
      accesoriosController: accesoriosController ?? this.accesoriosController,
      hombreController: hombreController ?? this.hombreController,
      categoriesListModelObj:
          categoriesListModelObj ?? this.categoriesListModelObj,
    );
  }
}
