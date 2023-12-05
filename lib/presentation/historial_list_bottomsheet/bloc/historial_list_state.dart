// ignore_for_file: must_be_immutable

part of 'historial_list_bloc.dart';

/// Represents the state of HistorialList in the application.
class HistorialListState extends Equatable {
  HistorialListState({this.historialListModelObj});

  HistorialListModel? historialListModelObj;

  @override
  List<Object?> get props => [
        historialListModelObj,
      ];
  HistorialListState copyWith({HistorialListModel? historialListModelObj}) {
    return HistorialListState(
      historialListModelObj:
          historialListModelObj ?? this.historialListModelObj,
    );
  }
}
