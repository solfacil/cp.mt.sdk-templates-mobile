import 'package:flutter/material.dart';
import 'package:solfacil/app/modules/{{feature_name.snakeCase()}}/presenter/stores/{{feature_name.snakeCase()}}_page_store.dart';
import 'package:solfacil/app/modules/{{feature_name.snakeCase()}}/presenter/widgets/{{feature_name.snakeCase()}}_widget.dart';
import 'package:solfacil/app/shared/components/main_page_state.dart'; 

class {{feature_name.pascalCase()}}Page extends StatefulWidget {

  const {{feature_name.pascalCase()}}Page( {
    Key? key,
  }) : super(key: key);

  @override
  State<{{feature_name.pascalCase()}}Page> createState() => _{{feature_name.pascalCase()}}PageState();
}

class _{{feature_name.pascalCase()}}PageState
    extends MainPageState<{{feature_name.pascalCase()}}Page, {{feature_name.pascalCase()}}PageStore> {

  @override
  Widget build(BuildContext context) {
    return const {{feature_name.pascalCase()}}Widget();
  }
}
