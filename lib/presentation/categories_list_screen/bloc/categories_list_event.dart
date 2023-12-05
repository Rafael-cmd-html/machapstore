// ignore_for_file: must_be_immutable

part of 'categories_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoriesList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoriesListEvent extends Equatable {}

/// Event that is dispatched when the CategoriesList widget is first created.
class CategoriesListInitialEvent extends CategoriesListEvent {
  @override
  List<Object?> get props => [];
}
