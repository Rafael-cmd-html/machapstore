// ignore_for_file: must_be_immutable

part of 'payment_methods_updated_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentMethodsUpdated widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentMethodsUpdatedEvent extends Equatable {}

/// Event that is dispatched when the PaymentMethodsUpdated widget is first created.
class PaymentMethodsUpdatedInitialEvent extends PaymentMethodsUpdatedEvent {
  @override
  List<Object?> get props => [];
}
