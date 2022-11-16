import 'dart:async';
import 'package:solfacil/app/app_widget_store.dart';
import 'package:solfacil/app/modules/{{feature_name.snakeCase()}}/domain/usecases/{{feature_name.snakeCase()}}_usecase.dart';
import 'package:solfacil/app/shared/client/client_manager.dart';
import 'package:solfacil/app/shared/components/main_store.dart';
import 'package:solfacil/app/shared/app_router.dart';

class {{feature_name.pascalCase()}}PageStore extends MainStore<bool> {
  final AppRouter _router;
  final {{feature_name.pascalCase()}}Usecase _usecase;

  {{feature_name.pascalCase()}}PageStore(
    ClientManager clientManager,
    AppWidgetStore appController,
    this._router,
    this._usecase,
  ) : super(
          clientManager,
          appController,
          true,
        );

  Future<void> example() async {
    await _usecase('example');
    _router.goToWelcome();
  }
}