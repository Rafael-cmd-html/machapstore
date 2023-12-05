import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget_item_model.dart';
import 'package:castillejos_famania_s_application2/presentation/product_description_screen/models/product_description_model.dart';
part 'product_description_event.dart';
part 'product_description_state.dart';

/// A bloc that manages the state of a ProductDescription according to the event that is dispatched to it.
class ProductDescriptionBloc
    extends Bloc<ProductDescriptionEvent, ProductDescriptionState> {
  ProductDescriptionBloc(ProductDescriptionState initialState)
      : super(initialState) {
    on<ProductDescriptionInitialEvent>(_onInitialize);
  }

  List<WidgetItemModel> fillWidgetItemList() {
    return List.generate(1, (index) => WidgetItemModel());
  }

  _onInitialize(
    ProductDescriptionInitialEvent event,
    Emitter<ProductDescriptionState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(state.copyWith(
        productDescriptionModelObj: state.productDescriptionModelObj
            ?.copyWith(widgetItemList: fillWidgetItemList())));
  }
}
