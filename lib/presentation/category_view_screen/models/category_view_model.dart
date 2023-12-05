// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [category_view_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryViewModel extends Equatable {
  CategoryViewModel() {}

  CategoryViewModel copyWith() {
    return CategoryViewModel();
  }

  @override
  List<Object?> get props => [];
}
