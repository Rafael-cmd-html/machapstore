// ignore_for_file: must_be_immutable

part of 'payment_methods_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentMethods widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentMethodsEvent extends Equatable {}

/// Event that is dispatched when the PaymentMethods widget is first created.
class PaymentMethodsInitialEvent extends PaymentMethodsEvent {
  @override
  List<Object?> get props => [];
}
