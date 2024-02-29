
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'manage_navigator_state.dart';

class ManageNavigatorCubit extends Cubit<ManageNavigatorState> {
  ManageNavigatorCubit() : super(const ManageNavigatorState(currentIndex: 0));

  void changePage({required page}) {
    emit(state.copyWith(currentIndex: page));
  }
}
