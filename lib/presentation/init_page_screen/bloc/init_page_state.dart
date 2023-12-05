// ignore_for_file: must_be_immutable

part of 'init_page_bloc.dart';

/// Represents the state of InitPage in the application.
class InitPageState extends Equatable {
  InitPageState({this.initPageModelObj});

  InitPageModel? initPageModelObj;

  @override
  List<Object?> get props => [
        initPageModelObj,
      ];
  InitPageState copyWith({InitPageModel? initPageModelObj}) {
    return InitPageState(
      initPageModelObj: initPageModelObj ?? this.initPageModelObj,
    );
  }
}
