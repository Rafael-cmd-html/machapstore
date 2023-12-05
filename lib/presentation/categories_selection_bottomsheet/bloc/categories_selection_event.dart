// ignore_for_file: must_be_immutable

part of 'categories_selection_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoriesSelection widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoriesSelectionEvent extends Equatable {}

/// Event that is dispatched when the CategoriesSelection widget is first created.
class CategoriesSelectionInitialEvent extends CategoriesSelectionEvent {
  @override
  List<Object?> get props => [];
}
