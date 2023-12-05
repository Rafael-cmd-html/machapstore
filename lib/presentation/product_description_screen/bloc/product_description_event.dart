// ignore_for_file: must_be_immutable

part of 'product_description_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductDescription widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductDescriptionEvent extends Equatable {}

/// Event that is dispatched when the ProductDescription widget is first created.
class ProductDescriptionInitialEvent extends ProductDescriptionEvent {
  @override
  List<Object?> get props => [];
}
