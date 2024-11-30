import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:logger/logger.dart';

part 'logger_provider.g.dart';

@riverpod
Logger logger(Ref ref) {
  return Logger();
}