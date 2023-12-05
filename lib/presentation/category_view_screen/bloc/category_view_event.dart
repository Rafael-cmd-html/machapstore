// ignore_for_file: must_be_immutable

part of 'category_view_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoryView widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoryViewEvent extends Equatable {}

/// Event that is dispatched when the CategoryView widget is first created.
class CategoryViewInitialEvent extends CategoryViewEvent {
  @override
  List<Object?> get props => [];
}
