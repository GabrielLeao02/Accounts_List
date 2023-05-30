import 'package:flutter/material.dart';
// import 'package:news_list/presenter/home/ui/home.dart';
import 'package:news_list/presenter/login/ui/login.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  static const routeName = '/dashboard';

  @override
  State<StatefulWidget> createState() {
    return _DashboardState();
  }
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Login(),
    );
  }
}
