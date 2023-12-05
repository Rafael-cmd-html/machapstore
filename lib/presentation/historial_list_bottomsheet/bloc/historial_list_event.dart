// ignore_for_file: must_be_immutable

part of 'historial_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HistorialList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HistorialListEvent extends Equatable {}

/// Event that is dispatched when the HistorialList widget is first created.
class HistorialListInitialEvent extends HistorialListEvent {
  @override
  List<Object?> get props => [];
}
