import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

///Check all the [Riverpod] Provider Change
///[Riverpod]すべてのプロバイダー変更をチェックする
class AppProviderObserver extends ProviderObserver {
  final logger = Logger();

  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    logger.i(
      '''
        { ---provider update---
          "provider": "${provider.name ?? provider.runtimeType}",
          "updValue": "$newValue"
        }
      '''
    );
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {

    logger.i(
        '''
        { ---provider update---
          "provider": "${provider.name ?? provider.runtimeType}",
          "updValue": "disposed"
        }
      '''
    );
    super.didDisposeProvider(provider, container);
  }
}
