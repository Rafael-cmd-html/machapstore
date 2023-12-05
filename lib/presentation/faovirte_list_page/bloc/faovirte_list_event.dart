// ignore_for_file: must_be_immutable

part of 'faovirte_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FaovirteList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FaovirteListEvent extends Equatable {}

/// Event that is dispatched when the FaovirteList widget is first created.
class FaovirteListInitialEvent extends FaovirteListEvent {
  @override
  List<Object?> get props => [];
}
