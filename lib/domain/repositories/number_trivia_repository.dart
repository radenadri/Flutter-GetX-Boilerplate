import 'package:dartz/dartz.dart';
import 'package:flutter_getx_number_trivia/app/core/error/failures.dart';
import 'package:flutter_getx_number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
