// ignore_for_file: must_be_immutable

part of 'edit_phone_number_bloc.dart';

/// Represents the state of EditPhoneNumber in the application.
class EditPhoneNumberState extends Equatable {
  EditPhoneNumberState({
    this.weburlController,
    this.nuevonumeroController,
    this.editPhoneNumberModelObj,
  });

  TextEditingController? weburlController;

  TextEditingController? nuevonumeroController;

  EditPhoneNumberModel? editPhoneNumberModelObj;

  @override
  List<Object?> get props => [
        weburlController,
        nuevonumeroController,
        editPhoneNumberModelObj,
      ];
  EditPhoneNumberState copyWith({
    TextEditingController? weburlController,
    TextEditingController? nuevonumeroController,
    EditPhoneNumberModel? editPhoneNumberModelObj,
  }) {
    return EditPhoneNumberState(
      weburlController: weburlController ?? this.weburlController,
      nuevonumeroController:
          nuevonumeroController ?? this.nuevonumeroController,
      editPhoneNumberModelObj:
          editPhoneNumberModelObj ?? this.editPhoneNumberModelObj,
    );
  }
}
