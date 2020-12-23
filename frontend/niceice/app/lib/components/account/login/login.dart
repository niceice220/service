import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app/common/common.dart';
import 'login_page.dart';
import 'package:app/components/account/register/register_page.dart';
import 'package:app/components/account/register/bloc/register_bloc.dart';

class LoginTab extends StatefulWidget {
  @override
  _LoginTab createState() => _LoginTab();
}

class _LoginTab extends State<LoginTab> {
  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      gLogin,
      gRegister,
    ];

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Theme.of(context).primaryColor,
              isScrollable: false,
              tabs: [
                for (final tab in tabs) Tab(text: tab),
              ],
            ),
          ),
          body: TabBarView(children: [
            LoginPage(),
            BlocProvider<RegisterBloc>(
              create: (context) => RegisterBloc(),
              child: RegisterPage(),
            )
          ])),
    );
  }
}
