// ignore_for_file: must_be_immutable

part of 'profile_data_bloc.dart';

/// Represents the state of ProfileData in the application.
class ProfileDataState extends Equatable {
  ProfileDataState({this.profileDataModelObj});

  ProfileDataModel? profileDataModelObj;

  @override
  List<Object?> get props => [
        profileDataModelObj,
      ];
  ProfileDataState copyWith({ProfileDataModel? profileDataModelObj}) {
    return ProfileDataState(
      profileDataModelObj: profileDataModelObj ?? this.profileDataModelObj,
    );
  }
}
