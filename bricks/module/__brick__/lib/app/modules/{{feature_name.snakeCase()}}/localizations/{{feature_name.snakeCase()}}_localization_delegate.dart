// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:multiple_localization/multiple_localization.dart';
import 'package:solfacil/app/modules/{{feature_name.snakeCase()}}/localizations/messages/messages_all.dart';

import '{{feature_name.snakeCase()}}_localization.dart';

class {{feature_name.pascalCase()}}ModuleLocalizationsDelegate
    extends LocalizationsDelegate<{{feature_name.pascalCase()}}ModuleLocalizations> {
  const {{feature_name.pascalCase()}}ModuleLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['pt', 'en'].contains(locale.languageCode);

  @override
  Future<{{feature_name.pascalCase()}}ModuleLocalizations> load(Locale locale) =>
      MultipleLocalizations.load(initializeMessages, locale,
          (l) => {{feature_name.pascalCase()}}ModuleLocalizations.load(locale),
          setDefaultLocale: true);

  @override
  bool shouldReload(LocalizationsDelegate<{{feature_name.pascalCase()}}ModuleLocalizations> old) =>
      false;
}