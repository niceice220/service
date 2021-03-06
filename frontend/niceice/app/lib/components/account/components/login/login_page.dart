import 'package:flutter/material.dart';

import 'package:app/common/common.dart';

BuildContext buildContext;

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    buildContext = context;
    final isDesktop = isDisplayDesktop(context);
    return isDesktop
        ? Center(
            child: Container(
                width: desktopLoginScreenMainAreaWidth(context: context),
                child: Column(
                  children: loginWidgetList,
                )))
        : ListView(
            padding: EdgeInsets.symmetric(
                horizontal: Configs.getInstance().horizontalPadding),
            children: loginWidgetList);
  }
}

final _accountKey = GlobalKey<AccountFieldState>();
final List<Widget> loginWidgetList = <Widget>[
  SizedBox(height: 80),
  LoginLogo(),
  Container(
      margin: EdgeInsets.symmetric(horizontal: Configs.getInstance().horizontalPadding),
      child: AccountField(
        key: _accountKey,
        inputLabel: '树荫号/邮箱/手机',
        validator: verifyAccount,
      )),
  heightBox20,
  Container(
      margin: EdgeInsets.symmetric(horizontal: Configs.getInstance().horizontalPadding),
      child: PasswordField()),
  heightBox20,
  FlatButton(
    onPressed: () {},
    child: Text('登录'),
    splashColor: Theme.of(buildContext).primaryColor,
    padding: EdgeInsets.all(30.0),
    shape: CircleBorder(
      side: BorderSide(color: Theme.of(buildContext).primaryColor),
    ),
  )
];
