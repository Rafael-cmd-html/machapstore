// ignore_for_file: must_be_immutable

part of 'name_updated_bloc.dart';

/// Represents the state of NameUpdated in the application.
class NameUpdatedState extends Equatable {
  NameUpdatedState({this.nameUpdatedModelObj});

  NameUpdatedModel? nameUpdatedModelObj;

  @override
  List<Object?> get props => [
        nameUpdatedModelObj,
      ];
  NameUpdatedState copyWith({NameUpdatedModel? nameUpdatedModelObj}) {
    return NameUpdatedState(
      nameUpdatedModelObj: nameUpdatedModelObj ?? this.nameUpdatedModelObj,
    );
  }
}
