// ignore_for_file: must_be_immutable

part of 'edit_name_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditName widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditNameEvent extends Equatable {}

/// Event that is dispatched when the EditName widget is first created.
class EditNameInitialEvent extends EditNameEvent {
  @override
  List<Object?> get props => [];
}
