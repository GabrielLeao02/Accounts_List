import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:news_list/presenter/login/mobx/userstore.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  late final UserStore userStore;
  @override
  void initState() {
    userStore = GetIt.I<UserStore>();
    userStore.loadUser();
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
              if (userStore.user == null) {
                return Text('Loading...');
              } else {
                return UserAccountsDrawerHeader(
                  currentAccountPicture: ClipOval(
                    child: Image.network(userStore.user!.image!),
                  ),
                  accountName:  Text(userStore.user!.nome!),
                  accountEmail:  Text(userStore.user!.email!),
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
