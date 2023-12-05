import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/profile_options_page/models/profile_options_model.dart';
part 'profile_options_event.dart';
part 'profile_options_state.dart';

/// A bloc that manages the state of a ProfileOptions according to the event that is dispatched to it.
class ProfileOptionsBloc
    extends Bloc<ProfileOptionsEvent, ProfileOptionsState> {
  ProfileOptionsBloc(ProfileOptionsState initialState) : super(initialState) {
    on<ProfileOptionsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileOptionsInitialEvent event,
    Emitter<ProfileOptionsState> emit,
  ) async {}
}
