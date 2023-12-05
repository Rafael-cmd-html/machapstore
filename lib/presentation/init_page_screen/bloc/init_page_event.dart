// ignore_for_file: must_be_immutable

part of 'init_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InitPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InitPageEvent extends Equatable {}

/// Event that is dispatched when the InitPage widget is first created.
class InitPageInitialEvent extends InitPageEvent {
  @override
  List<Object?> get props => [];
}
