import 'package:flutter/material.dart';
import 'package:news_list/presenter/dashboard/ui/dashboard.dart';
import 'package:news_list/presenter/widgets/theme/theme_data.dart';

class App extends StatefulWidget {
  const App({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeDataProject.light,
      debugShowCheckedModeBanner: false,
      home: const SafeArea(child: Dashboard()),
    );
  }
}
