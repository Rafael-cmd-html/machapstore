import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/inicioseven_item_model.dart';
import 'package:castillejos_famania_s_application2/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj
            ?.copyWith(iniciosevenItemList: fillIniciosevenItemList())));
  }

  List<IniciosevenItemModel> fillIniciosevenItemList() {
    return [
      IniciosevenItemModel(
          phones: ImageConstant.imgRectangle14, phones1: "Phones"),
      IniciosevenItemModel(
          phones: ImageConstant.imgRectangle15, phones1: "Moda"),
      IniciosevenItemModel(
          phones: ImageConstant.imgRectangle16, phones1: "Pc´s"),
      IniciosevenItemModel(
          phones: ImageConstant.imgRectangle17, phones1: "Accesorios")
    ];
  }
}
