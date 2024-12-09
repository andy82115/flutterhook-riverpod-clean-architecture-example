import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hook_riverpod_clean_architecture/main/provider_observer.dart';
import 'package:flutter_hook_riverpod_clean_architecture/router/app_router.gr.dart';
import 'package:flutter_hook_riverpod_clean_architecture/share/api/error/api_error_handle_provider.dart';
import 'package:flutter_hook_riverpod_clean_architecture/share/api/error/state/api_error_state.dart';
import 'package:flutter_hook_riverpod_clean_architecture/share/theme/provider/theme_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../router/app_router.dart';
import '../share/logger/provider/logger_provider.dart';
import '../share/theme/app_theme.dart';
import 'app_env.dart';

class AndyApp extends HookConsumerWidget {
  AndyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logger = ref.watch(loggerProvider);
    final themeMode = ref.watch(themeModeNotifierProvider);

    logger.i('$runtimeType, App create and start');

    return MaterialApp.router(
      title: 'Riverpod + Hook + CleanArch',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}

///The main builder
Future<void> buildMain(AppEnvironment environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  EnvInfo.initialize(environment);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.light,
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(ProviderScope(
      observers: [
        AppProviderObserver(),
      ],
      child: AndyApp(),
    ));
  });
}