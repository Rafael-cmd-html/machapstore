// ignore_for_file: must_be_immutable

part of 'address_register_bloc.dart';

/// Represents the state of AddressRegister in the application.
class AddressRegisterState extends Equatable {
  AddressRegisterState({
    this.numExteriorController,
    this.codigoPostalController,
    this.addressRegisterModelObj,
  });

  TextEditingController? numExteriorController;

  TextEditingController? codigoPostalController;

  AddressRegisterModel? addressRegisterModelObj;

  @override
  List<Object?> get props => [
        numExteriorController,
        codigoPostalController,
        addressRegisterModelObj,
      ];
  AddressRegisterState copyWith({
    TextEditingController? numExteriorController,
    TextEditingController? codigoPostalController,
    AddressRegisterModel? addressRegisterModelObj,
  }) {
    return AddressRegisterState(
      numExteriorController:
          numExteriorController ?? this.numExteriorController,
      codigoPostalController:
          codigoPostalController ?? this.codigoPostalController,
      addressRegisterModelObj:
          addressRegisterModelObj ?? this.addressRegisterModelObj,
    );
  }
}
