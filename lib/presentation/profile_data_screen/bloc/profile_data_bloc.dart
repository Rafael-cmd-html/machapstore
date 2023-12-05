import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/profile_data_screen/models/profile_data_model.dart';
part 'profile_data_event.dart';
part 'profile_data_state.dart';

/// A bloc that manages the state of a ProfileData according to the event that is dispatched to it.
class ProfileDataBloc extends Bloc<ProfileDataEvent, ProfileDataState> {
  ProfileDataBloc(ProfileDataState initialState) : super(initialState) {
    on<ProfileDataInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileDataInitialEvent event,
    Emitter<ProfileDataState> emit,
  ) async {}
}
