# Module
This brick creates the entire structure of folders and files necessary to start the development of a new feature, in the clean architecture pattern.

## Getting Started 🚀
```sh
 mason make module
```
or 

```sh
 mason make module --feature_name budget
```

## Variables ✨

| Variable         | Description                   | Required   | Type     |
| ---------------- | ----------------------------- | ---------- | -------- |
| `feature_name`   | The feature name              | `Yes`      | `string` |


## Output 📦

Generated folder architecture
```
 📦lib
 ┗ 📂app
   ┗ 📂modules
     ┗ 📂{{feature_name}}
       ┣ 📂data
       ┃ ┗ 📂repositories
       ┃   ┗ 📜{{feature_name.snakeCase()}}_repository.dart
       ┣ 📂domain
       ┃ ┣ 📂entities
       ┃ ┃ ┗ 📜{{feature_name.snakeCase()}}_entity.dart
       ┃ ┣ 📂repositories
       ┃ ┃ ┗ 📜{{feature_name.snakeCase()}}_repository.dart
       ┃ ┗ 📂usecases
       ┃   ┗ 📜{{feature_name.snakeCase()}}_usecase.dart
       ┣ 📂localizations
       ┃ ┣ 📂messages
       ┃ ┃ ┣ 📂en
       ┃ ┃   ┗ 📜{{feature_name.snakeCase()}}_en.arb
       ┃ ┃ ┗ 📂pt
       ┃ ┃   ┗ 📜{{feature_name.snakeCase()}}_pt.arb
       ┃ ┣ 📜{{feature_name.snakeCase()}}_localization.dart
       ┃ ┗ 📜{{feature_name.snakeCase()}}_localization_delegation.dart
       ┣ 📂presenter
       ┃ ┣ 📂pages
       ┃ ┃ ┗ 📜{{feature_name.snakeCase()}}_page.dart
       ┃ ┣ 📂stores
       ┃ ┃ ┗ 📜{{feature_name.snakeCase()}}_page_store.dart
       ┃ ┗ 📂widgets
       ┃   ┗ 📜{{feature_name.snakeCase()}}_widget.dart
       ┗ 📜{{feature_name.snakeCase()}}_module.dart
 ```