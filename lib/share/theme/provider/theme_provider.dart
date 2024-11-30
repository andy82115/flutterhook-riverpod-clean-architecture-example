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
    state = state != ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }
}