// coverage:ignore-file
import 'package:flutter_modular/flutter_modular.dart';
import 'package:solfacil/app/modules/{{feature_name.snakeCase()}}/data/repositories/{{feature_name.snakeCase()}}_repository_implementation.dart';
import 'package:solfacil/app/modules/{{feature_name.snakeCase()}}/domain/usecases/{{feature_name.snakeCase()}}_usecase.dart';
import 'package:solfacil/app/modules/{{feature_name.snakeCase()}}/presenter/pages/{{feature_name.snakeCase()}}_page.dart';
import 'package:solfacil/app/modules/{{feature_name.snakeCase()}}/presenter/stores/{{feature_name.snakeCase()}}_page_store.dart';

class {{feature_name.pascalCase()}}Module extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind((inject) => {{feature_name.pascalCase()}}RepositoryImplementation(inject.get())),
        Bind((inject) => {{feature_name.pascalCase()}}Usecase(inject.get())),
        Bind((inject) => {{feature_name.pascalCase()}}PageStore(
              inject.get(),
              inject.get(),
              inject.get(),
              inject.get(),
        )),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, __) => const {{feature_name.pascalCase()}}Page(),
        ),
      ];
}