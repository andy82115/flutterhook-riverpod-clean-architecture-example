import 'package:flutter_dotenv/flutter_dotenv.dart';

enum AppEnvironment { dev, prod }

abstract class EnvInfo {
  static AppEnvironment _environment = AppEnvironment.dev;

  static void initialize(AppEnvironment environment) {
    EnvInfo._environment = environment;
  }

  static String get appName => _environment._appTitle;

  static String get envName => _environment._envName;
  static String get gitToken => _environment._gitToken;
  static String get baseUrl => _environment._baseUrl;
  static AppEnvironment get environment => _environment;
  static bool get isProduction => _environment == AppEnvironment.prod;
}

extension _EnvProperties on AppEnvironment {
  static final _appTitles = {
    AppEnvironment.dev: 'Flutter riverpod clean-archi dev',
    AppEnvironment.prod: 'Flutter riverpod clean-archi prod',
  };

  static final _baseUrls = {
    AppEnvironment.dev: dotenv.env['DEV_BASE_URL'],
    AppEnvironment.prod: dotenv.env['PROD_BASE_URL'],
  };

  static final _envs = {
    AppEnvironment.dev: 'dev',
    AppEnvironment.prod: 'prod',
  };

  static final _gitTokens = {
    AppEnvironment.dev: dotenv.env['DEV_GIT_TOKEN'],
    AppEnvironment.prod:  dotenv.env['PROD_GIT_TOKEN'],
  };

  String get _appTitle => _appTitles[this]!;
  String get _envName => _envs[this]!;
  String get _baseUrl => _baseUrls[this]!;
  String get _gitToken => _gitTokens[this]!;
}
