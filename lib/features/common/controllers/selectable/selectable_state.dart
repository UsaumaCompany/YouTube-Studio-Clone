part of 'selectable_bloc.dart';

class SelectableState extends Equatable {
  final int currentIndex;
  const SelectableState({this.currentIndex = 0});

  SelectableState copyWith({int? currentIndex}) =>
      SelectableState(currentIndex: currentIndex ?? this.currentIndex);

  @override
  List<Object> get props => [currentIndex];
}
