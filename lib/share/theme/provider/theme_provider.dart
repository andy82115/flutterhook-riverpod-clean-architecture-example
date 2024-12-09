import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class ThemeModeNotifier extends _$ThemeModeNotifier {
  @override
  ThemeMode build() {
    return ThemeMode.light;
  }

  Future<void> toggleTheme() async {
    switch (state) {
      case ThemeMode.light:
      case ThemeMode.system:
        state = ThemeMode.dark;
      case ThemeMode.dark:
        state = ThemeMode.light;
    }
  }
}
