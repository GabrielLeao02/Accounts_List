import 'package:flutter/material.dart';
import 'package:news_list/presenter/drawer_menu/ui/drawer_menu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: const Text("Home")),
      drawer: const DrawerMenu(),
      body: const Text(""),
    );
  }
}
