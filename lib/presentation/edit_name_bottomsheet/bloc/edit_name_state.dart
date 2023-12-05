// ignore_for_file: must_be_immutable

part of 'edit_name_bloc.dart';

/// Represents the state of EditName in the application.
class EditNameState extends Equatable {
  EditNameState({
    this.apellidosController,
    this.correoelectronicoController,
    this.editNameModelObj,
  });

  TextEditingController? apellidosController;

  TextEditingController? correoelectronicoController;

  EditNameModel? editNameModelObj;

  @override
  List<Object?> get props => [
        apellidosController,
        correoelectronicoController,
        editNameModelObj,
      ];
  EditNameState copyWith({
    TextEditingController? apellidosController,
    TextEditingController? correoelectronicoController,
    EditNameModel? editNameModelObj,
  }) {
    return EditNameState(
      apellidosController: apellidosController ?? this.apellidosController,
      correoelectronicoController:
          correoelectronicoController ?? this.correoelectronicoController,
      editNameModelObj: editNameModelObj ?? this.editNameModelObj,
    );
  }
}
