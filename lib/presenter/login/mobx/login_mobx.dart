
import 'package:mobx/mobx.dart';
import 'package:news_list/feature/login/data/model/user.dart';
import 'package:news_list/feature/login/domain/usecases/user_usecase.dart';
part 'login_mobx.g.dart';

class LoginMobxImpl = LoginMobx with _$LoginMobxImpl;

abstract class LoginMobx with Store {
  final UserUseCase userUseCase;

  LoginMobx(this.userUseCase);
  @observable
  User? user;

  @action
  Future<void> loadUser() async {
    user = await userUseCase();
  }
}
