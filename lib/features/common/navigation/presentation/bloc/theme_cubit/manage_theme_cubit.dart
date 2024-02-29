import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repo/storage_repository.dart';

part 'manage_theme_state.dart';

class ManageThemeCubit extends Cubit<ManageThemeState> {
  ManageThemeCubit()
      : super(ManageThemeState(isDark: StorageRepository.getBool('isDark')));

  void changeThemeMode({required isDark}) async {
    await StorageRepository.putBool('isDark', isDark);
    emit(state.copyWith(isDarkValue: isDark));
  }
}
