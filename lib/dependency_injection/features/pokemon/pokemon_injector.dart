import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_list/feature/login/data/datasource/login_datasource.dart';
import 'package:news_list/feature/login/data/repositories/user_repository_impl.dart';
import 'package:news_list/feature/login/domain/repositories/user_repository.dart';
import 'package:news_list/feature/login/domain/usecases/user_usecase.dart';

class UserInjector {
  void call() {
    userInjector();
  }

  void userInjector() {
    GetIt.I.registerSingleton<Dio>(Dio());
    GetIt.I.registerFactory<UserDataSource>(
        () => UserDataSourceImpl(GetIt.I<Dio>()));

    GetIt.I.registerFactory<UserRepository>(
        () => UserRepositoryImpl(GetIt.I<UserDataSource>()));

    GetIt.I.registerFactory<UserUseCase>(
        () => UserUseCaseImpl(GetIt.I<UserRepository>()));
  }
}
