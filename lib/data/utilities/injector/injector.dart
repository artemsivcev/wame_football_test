import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wame_football_test/data/utilities/injector/injector.config.dart';

/// Initializes and configures dependencies using GetIt service locator.
///
/// This function sets up dependency injection using GetIt and registers
/// the Dio instance as a singleton.
@InjectableInit(
  preferRelativeImports: true,
)
// Initialize GetIt service locator
Future<void> configureDependencies(GetIt getIt) async {
  getIt
    ..init()
    ..registerSingleton<Dio>(Dio());
}
