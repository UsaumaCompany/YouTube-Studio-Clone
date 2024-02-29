part of 'manage_navigator_cubit.dart';

class ManageNavigatorState extends Equatable {
  const ManageNavigatorState({required this.currentIndex});

  ManageNavigatorState copyWith({int? currentIndex}) => ManageNavigatorState(currentIndex: currentIndex ?? this.currentIndex);

  final int currentIndex;

  @override
  List<Object> get props => [currentIndex];
}
