// ignore_for_file: must_be_immutable

part of 'address_updated_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddressUpdated widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddressUpdatedEvent extends Equatable {}

/// Event that is dispatched when the AddressUpdated widget is first created.
class AddressUpdatedInitialEvent extends AddressUpdatedEvent {
  @override
  List<Object?> get props => [];
}
