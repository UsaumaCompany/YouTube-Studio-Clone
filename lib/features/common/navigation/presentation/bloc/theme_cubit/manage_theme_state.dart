part of 'manage_theme_cubit.dart';

class ManageThemeState extends Equatable {
  const ManageThemeState({required this.isDark});

  ManageThemeState copyWith({bool? isDarkValue}) => ManageThemeState(isDark: isDarkValue ?? isDark);

  final bool isDark;

  @override
  List<Object> get props => [isDark];
}
