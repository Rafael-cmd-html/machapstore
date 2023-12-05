// ignore_for_file: must_be_immutable

part of 'profile_data_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileData widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileDataEvent extends Equatable {}

/// Event that is dispatched when the ProfileData widget is first created.
class ProfileDataInitialEvent extends ProfileDataEvent {
  @override
  List<Object?> get props => [];
}
