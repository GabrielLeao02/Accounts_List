import 'package:news_list/feature/login/data/model/user.dart';

abstract class UserRepository {
  Future<User> call();
}
