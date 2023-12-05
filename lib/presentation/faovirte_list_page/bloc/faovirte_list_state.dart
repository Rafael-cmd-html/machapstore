// ignore_for_file: must_be_immutable

part of 'faovirte_list_bloc.dart';

/// Represents the state of FaovirteList in the application.
class FaovirteListState extends Equatable {
  FaovirteListState({this.faovirteListModelObj});

  FaovirteListModel? faovirteListModelObj;

  @override
  List<Object?> get props => [
        faovirteListModelObj,
      ];
  FaovirteListState copyWith({FaovirteListModel? faovirteListModelObj}) {
    return FaovirteListState(
      faovirteListModelObj: faovirteListModelObj ?? this.faovirteListModelObj,
    );
  }
}
