// coverage:ignore-file
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'messages/messages_all.dart';

class {{feature_name.pascalCase()}}ModuleLocalizations {
  static Future<{{feature_name.pascalCase()}}ModuleLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return {{feature_name.pascalCase()}}ModuleLocalizations();
    });
  }

  static {{feature_name.pascalCase()}}ModuleLocalizations? of(BuildContext context) {
    return Localizations.of<{{feature_name.pascalCase()}}ModuleLocalizations>(
        context, {{feature_name.pascalCase()}}ModuleLocalizations);
  }

  final {{feature_name.camelCase()}} = _{{feature_name.pascalCase()}}Page();
}

class _{{feature_name.pascalCase()}}Page {
  String get example => Intl.message('', name: 'exampleTitle');
}
