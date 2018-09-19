import 'package:flutter/widgets.dart';

/* 设备相关 */
class DevicesUtils {
  /* 获取系状态栏高度 */
  static double getSysStatsHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  /* 获取屏幕高度 */
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /* 获取屏幕宽度 */
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
