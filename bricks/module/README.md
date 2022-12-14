# Module
This brick creates the entire structure of folders and files necessary to start the development of a new feature, in the clean architecture pattern.

## Getting Started ๐
```sh
 mason make module
```
or 

```sh
 mason make module --feature_name budget
```

## Variables โจ

| Variable         | Description                   | Required   | Type     |
| ---------------- | ----------------------------- | ---------- | -------- |
| `feature_name`   | The feature name              | `Yes`      | `string` |


## Output ๐ฆ

Generated folder architecture
```
 ๐ฆlib
 โ ๐app
   โ ๐modules
     โ ๐{{feature_name}}
       โฃ ๐data
       โ โ ๐repositories
       โ   โ ๐{{feature_name.snakeCase()}}_repository.dart
       โฃ ๐domain
       โ โฃ ๐entities
       โ โ โ ๐{{feature_name.snakeCase()}}_entity.dart
       โ โฃ ๐repositories
       โ โ โ ๐{{feature_name.snakeCase()}}_repository.dart
       โ โ ๐usecases
       โ   โ ๐{{feature_name.snakeCase()}}_usecase.dart
       โฃ ๐localizations
       โ โฃ ๐messages
       โ โ โฃ ๐en
       โ โ   โ ๐{{feature_name.snakeCase()}}_en.arb
       โ โ โ ๐pt
       โ โ   โ ๐{{feature_name.snakeCase()}}_pt.arb
       โ โฃ ๐{{feature_name.snakeCase()}}_localization.dart
       โ โ ๐{{feature_name.snakeCase()}}_localization_delegation.dart
       โฃ ๐presenter
       โ โฃ ๐pages
       โ โ โ ๐{{feature_name.snakeCase()}}_page.dart
       โ โฃ ๐stores
       โ โ โ ๐{{feature_name.snakeCase()}}_page_store.dart
       โ โ ๐widgets
       โ   โ ๐{{feature_name.snakeCase()}}_widget.dart
       โ ๐{{feature_name.snakeCase()}}_module.dart
 ```