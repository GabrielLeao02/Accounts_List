import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:news_list/core/app/app.dart';
import 'package:news_list/dependency_injection/share/injector.dart';
import 'package:news_list/feature/login/data/model/user.dart';
import 'package:news_list/feature/login/domain/usecases/user_usecase.dart';

void main() async {
  await Injector()();
  UserUseCase userUseCase = GetIt.instance<UserUseCase>();
  User user = await userUseCase();
  debugPrint(user.email);
  runApp(const App());
}
