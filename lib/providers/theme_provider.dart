import 'package:flutter_lab1/models/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateNotifierProvider<Theme, ThemeModel>((ref) {
  return Theme(ThemeModel(false));
});

class Theme extends StateNotifier<ThemeModel> {
  Theme(ThemeModel state) : super(state);

  setTheme(bool isDarkMode) {
    state = ThemeModel(isDarkMode);
  }
}
