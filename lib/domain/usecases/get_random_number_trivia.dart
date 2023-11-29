import 'package:dartz/dartz.dart';
import 'package:flutter_getx_number_trivia/app/core/error/failures.dart';
import 'package:flutter_getx_number_trivia/app/core/util/usecase_helper.dart';
import 'package:flutter_getx_number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_getx_number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:get/get.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final repository = Get.find<NumberTriviaRepository>();

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
