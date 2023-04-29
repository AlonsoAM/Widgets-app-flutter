// estado = isDarkMode = boolean

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// listado de Colores inmutable
final colorListProvider = Provider((ref) => colorList);

// un simple bool
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// un simple int
final selectedColorProvider = StateProvider<int>((ref) => 0);

// un objeto de tipo AppTheme(custom)
final themeNotifireProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // state => estado = new AppTheme
  ThemeNotifier() : super(AppTheme());
  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int index) {
    state = state.copyWith(selectedColor: index);
  }
}
