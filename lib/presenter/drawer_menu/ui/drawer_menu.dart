import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:news_list/presenter/login/mobx/login_mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  late final LoginMobx user;
  @override
  void initState() {
    user = GetIt.I<LoginMobx>();
    user.loadUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Observer(
            builder: (_) {
              if (user.user == null) {
                return Text('Loading...');
              } else {
                return UserAccountsDrawerHeader(
                  currentAccountPicture: ClipOval(
                    child: Image.network(user.user!.image!),
                  ),
                  accountName:  Text(user.user!.nome!),
                  accountEmail:  Text(user.user!.email!),
                );
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Lista de contas'),
            onTap: () {
              // Lógica para ação da opção 1
            },
          ),
        ],
      ),
    );
  }
}
