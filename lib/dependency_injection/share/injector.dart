//import 'package:pokemon/dependency_injection/features/pokemon/pokemon_injector.dart';

import 'package:news_list/dependency_injection/features/user/user_injector.dart';

class Injector {
  call() {
    feature();
  }

  void feature() {
    UserInjector()();
  }
}
