// ignore_for_file: must_be_immutable

part of 'address_updated_bloc.dart';

/// Represents the state of AddressUpdated in the application.
class AddressUpdatedState extends Equatable {
  AddressUpdatedState({this.addressUpdatedModelObj});

  AddressUpdatedModel? addressUpdatedModelObj;

  @override
  List<Object?> get props => [
        addressUpdatedModelObj,
      ];
  AddressUpdatedState copyWith({AddressUpdatedModel? addressUpdatedModelObj}) {
    return AddressUpdatedState(
      addressUpdatedModelObj:
          addressUpdatedModelObj ?? this.addressUpdatedModelObj,
    );
  }
}
