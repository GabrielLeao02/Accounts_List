import 'package:news_list/feature/login/data/model/user.dart';
import 'package:news_list/feature/login/domain/repositories/user_repository.dart';

abstract class UserUseCase {
  Future<User> call();
}

class UserUseCaseImpl implements UserUseCase {
  final UserRepository userRepository;

  UserUseCaseImpl(this.userRepository);

  @override
  Future<User> call() async => userRepository();
}
