import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final progress = context.logger.progress('Flutter Intl process');

  await Process.run(
    'flutter',
    [
      'pub',
      'run',
      'intl_generator:generate_from_arb',
      '--output-dir=lib/app/modules/{{feature_name.snakeCase()}}/localizations/messages',
      '--no-use-deferred-loading',
      'lib/app/modules/{{feature_name.snakeCase()}}/localizations/{{feature_name.snakeCase()}}_localization.dart',
      'lib/app/modules/{{feature_name.snakeCase()}}/localizations/messages/en/intl_*.arb',
      'lib/app/modules/{{feature_name.snakeCase()}}/localizations/messages/pt/intl_*.arb',
    ],
  );

  progress.complete();
}
