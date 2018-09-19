import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/* 路由导航 */
class NavigatorUtils {
  static push(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

  static pushReplacement(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => widget));
  }

  static pushAndRemoveUntil(BuildContext context, Widget widget) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => widget),
        (route) => route == null);
  }

  static bool pop(BuildContext context) {
    return Navigator.pop(context);
  }

  static Future pushAsync(BuildContext context, Widget widget) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

    return result;
  }

  static bool popAsync<T>(BuildContext context, T result) {
    return Navigator.pop(context, result);
  }
}
