import 'package:equatable/equatable.dart';

class {{feature_name.pascalCase()}}Entity extends Equatable {
  final String example;

  const {{feature_name.pascalCase()}}Entity({
    required this.example,
  });

  @override
  List<Object?> get props => [
        example,
      ];
}