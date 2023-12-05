// ignore_for_file: must_be_immutable

part of 'edit_phone_number_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditPhoneNumber widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditPhoneNumberEvent extends Equatable {}

/// Event that is dispatched when the EditPhoneNumber widget is first created.
class EditPhoneNumberInitialEvent extends EditPhoneNumberEvent {
  @override
  List<Object?> get props => [];
}
