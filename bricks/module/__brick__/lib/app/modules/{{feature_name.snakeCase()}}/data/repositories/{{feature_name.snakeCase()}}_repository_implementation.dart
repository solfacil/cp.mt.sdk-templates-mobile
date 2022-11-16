import 'package:dartz/dartz.dart';
import 'package:solfacil/app/core/usecase/errors/failures.dart';
import 'package:solfacil/app/modules/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
import 'package:solfacil_sdk/services/models/sol_request_exception.dart';
import 'package:solfacil_sdk/services/{{feature_name.snakeCase()}}/{{feature_name.snakeCase()}}_service.dart';

class {{feature_name.pascalCase()}}RepositoryImplementation implements I{{feature_name.pascalCase()}}Repository {
  final {{feature_name.pascalCase()}}Service service;

  {{feature_name.pascalCase()}}RepositoryImplementation(
    this.service,
  );

  @override
  Future<Either<Failure, bool>> example(String example) async {
    try {
      final response = await service.example();
      if (response == null || response.result == null) {
        return const Left(NullResponseFailure());
      }

      return const Right(true);
    } on SolRequestException catch (_) {
      return const Left(DefaultFailure());
    }
  }
}