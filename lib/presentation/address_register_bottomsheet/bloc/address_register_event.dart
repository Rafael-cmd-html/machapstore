// ignore_for_file: must_be_immutable

part of 'address_register_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddressRegister widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddressRegisterEvent extends Equatable {}

/// Event that is dispatched when the AddressRegister widget is first created.
class AddressRegisterInitialEvent extends AddressRegisterEvent {
  @override
  List<Object?> get props => [];
}
