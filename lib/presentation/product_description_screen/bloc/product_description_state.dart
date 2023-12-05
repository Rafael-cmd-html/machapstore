// ignore_for_file: must_be_immutable

part of 'product_description_bloc.dart';

/// Represents the state of ProductDescription in the application.
class ProductDescriptionState extends Equatable {
  ProductDescriptionState({
    this.sliderIndex = 0,
    this.productDescriptionModelObj,
  });

  ProductDescriptionModel? productDescriptionModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        productDescriptionModelObj,
      ];
  ProductDescriptionState copyWith({
    int? sliderIndex,
    ProductDescriptionModel? productDescriptionModelObj,
  }) {
    return ProductDescriptionState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      productDescriptionModelObj:
          productDescriptionModelObj ?? this.productDescriptionModelObj,
    );
  }
}
