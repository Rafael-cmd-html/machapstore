import '../../../core/app_export.dart';

/// This class is used in the [inicioseven_item_widget] screen.
class IniciosevenItemModel {
  IniciosevenItemModel({
    this.phones,
    this.phones1,
    this.id,
  }) {
    phones = phones ?? ImageConstant.imgRectangle14;
    phones1 = phones1 ?? "Phones";
    id = id ?? "";
  }

  String? phones;

  String? phones1;

  String? id;
}
