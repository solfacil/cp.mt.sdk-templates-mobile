import 'package:dartz/dartz.dart';
import 'package:solfacil/app/core/usecase/errors/failures.dart';
import 'package:solfacil/app/core/usecase/usecase.dart';
import 'package:solfacil/app/modules/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';

class {{feature_name.pascalCase()}}Usecase implements Usecase<bool, String> {
  final I{{feature_name.pascalCase()}}Repository repository;

  {{feature_name.pascalCase()}}Usecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(String example) async {
    return await repository.example(example);
  }
}