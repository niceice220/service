import 'dart:math';
import 'package:flutter/material.dart';
import 'package:app/common/util/config.dart';

String verifyMailAddr(String mailAddr) {
  // RegExp reg = new RegExp(r'^[a-zA-Z0-9_-]{1,16}$');
  RegExp mailRegExp =
      RegExp(r'^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$');
  return mailRegExp.hasMatch(mailAddr) ? null : '邮箱格式不正确';
}

String verifyAccount(String account) {
  return account.isEmpty ? '不能为空' : null;
}

const heightBox20 = SizedBox(
  height: 20,
);

double desktopLoginScreenMainAreaWidth({BuildContext context}) {
  return min(gDesktopLeastWidth,
      MediaQuery.of(context).size.width - 2 * gHorizontalPadding);
}
