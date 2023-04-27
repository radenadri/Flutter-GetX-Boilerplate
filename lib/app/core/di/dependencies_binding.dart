import 'package:flutter_getx_number_trivia/app/core/network/network_info.dart';
import 'package:flutter_getx_number_trivia/app/core/util/input_converter.dart';
import 'package:flutter_getx_number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:flutter_getx_number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:flutter_getx_number_trivia/data/repositories/number_trivia_repository_impl.dart';
import 'package:flutter_getx_number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_getx_number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:flutter_getx_number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DependenciesBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    // Shared Preferences
    await Get.putAsync(() => SharedPreferences.getInstance());
    // HTTP Client
    Get.lazyPut(() => http.Client());
    // Internet Connection Checker
    Get.lazyPut(() => InternetConnectionChecker());
    // Local Data Source
    Get.lazyPut<NumberTriviaLocalDataSource>(
        () => NumberTriviaLocalDataSourceImpl());
    // Network Info
    Get.lazyPut<NetworkInfo>(() => NetworkInfoImpl());
    // Remote Data Source
    Get.lazyPut<NumberTriviaRemoteDataSource>(
        () => NumberTriviaRemoteDataSourceImpl());
    // Input Converter
    Get.lazyPut(() => InputConverter());
    // Repository
    Get.lazyPut<NumberTriviaRepository>(() => NumberTriviaRepositoryImpl());
    // Use Cases
    Get.lazyPut(() => GetRandomNumberTrivia());
    Get.lazyPut(() => GetConcreteNumberTrivia());
  }
}
