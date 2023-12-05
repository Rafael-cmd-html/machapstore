// ignore_for_file: must_be_immutable

part of 'profile_options_bloc.dart';

/// Represents the state of ProfileOptions in the application.
class ProfileOptionsState extends Equatable {
  ProfileOptionsState({this.profileOptionsModelObj});

  ProfileOptionsModel? profileOptionsModelObj;

  @override
  List<Object?> get props => [
        profileOptionsModelObj,
      ];
  ProfileOptionsState copyWith({ProfileOptionsModel? profileOptionsModelObj}) {
    return ProfileOptionsState(
      profileOptionsModelObj:
          profileOptionsModelObj ?? this.profileOptionsModelObj,
    );
  }
}
