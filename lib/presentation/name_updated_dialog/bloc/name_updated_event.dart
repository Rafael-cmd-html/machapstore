// ignore_for_file: must_be_immutable

part of 'name_updated_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NameUpdated widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NameUpdatedEvent extends Equatable {}

/// Event that is dispatched when the NameUpdated widget is first created.
class NameUpdatedInitialEvent extends NameUpdatedEvent {
  @override
  List<Object?> get props => [];
}
