import 'package:bookly_app/core/api/dio_helper.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(
      DioHelper(
        dio: Dio(),
      ),
    ),
  );
}
