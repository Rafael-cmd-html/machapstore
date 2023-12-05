// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'widget_item_model.dart';

/// This class defines the variables used in the [product_description_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDescriptionModel extends Equatable {
  ProductDescriptionModel({this.widgetItemList = const []}) {}

  List<WidgetItemModel> widgetItemList;

  ProductDescriptionModel copyWith({List<WidgetItemModel>? widgetItemList}) {
    return ProductDescriptionModel(
      widgetItemList: widgetItemList ?? this.widgetItemList,
    );
  }

  @override
  List<Object?> get props => [widgetItemList];
}
