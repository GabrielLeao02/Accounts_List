import 'package:news_list/feature/login/data/datasource/login_datasource.dart';

import 'package:news_list/feature/login/data/model/user.dart';
import 'package:news_list/feature/login/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDataSource _dataSource;

  UserRepositoryImpl(this._dataSource);

  @override
  Future<User> call() async {
    User result = await _dataSource(fromJson: (json) => User.fromJson(json));
    return result;
  }
}
