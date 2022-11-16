import 'package:dartz/dartz.dart';
import 'package:solfacil/app/core/usecase/errors/failures.dart';

abstract class I{{feature_name.pascalCase()}}Repository {
  Future<Either<Failure, bool>> example(String example);
}