// ignore_for_file: must_be_immutable

part of 'profile_options_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileOptions widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileOptionsEvent extends Equatable {}

/// Event that is dispatched when the ProfileOptions widget is first created.
class ProfileOptionsInitialEvent extends ProfileOptionsEvent {
  @override
  List<Object?> get props => [];
}
