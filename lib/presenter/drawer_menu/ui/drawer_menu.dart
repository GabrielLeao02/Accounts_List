import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipOval(
              child: Image.network(
                  'https://media.licdn.com/dms/image/D4D03AQE0495VLf4lcA/profile-displayphoto-shrink_800_800/0/1681690509715?e=1690416000&v=beta&t=6sCAtd-BPMh8MoHq2TsMZqmwrQdYPmei4_jvzTEAT2o'),
            ),
            accountName: const Text("Gabriel Eduardo G Leão"),
            accountEmail: const Text("Gabriel.leao@relyon.dev.br"),
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
