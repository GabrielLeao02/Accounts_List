
import 'package:mobx/mobx.dart';
import 'package:news_list/feature/login/data/model/user.dart';
import 'package:news_list/feature/login/domain/usecases/user_usecase.dart';
part 'userstore.g.dart';

class LoginMobx = UserStore with _$LoginMobx;

abstract class UserStore with Store {
  final UserUseCase userUseCase;

  UserStore(this.userUseCase);
  @observable
  User? user;

  @action
  Future<void> loadUser() async {
    user = await userUseCase();
  }
}
