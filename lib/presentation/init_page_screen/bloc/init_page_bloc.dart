import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:castillejos_famania_s_application2/presentation/init_page_screen/models/init_page_model.dart';
part 'init_page_event.dart';
part 'init_page_state.dart';

/// A bloc that manages the state of a InitPage according to the event that is dispatched to it.
class InitPageBloc extends Bloc<InitPageEvent, InitPageState> {
  InitPageBloc(InitPageState initialState) : super(initialState) {
    on<InitPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InitPageInitialEvent event,
    Emitter<InitPageState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
// TODO: implement Actions
    });
  }
}
