import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:device_id/device_id.dart';
import 'package:package_info/package_info.dart';

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

  /* 获取设备id */
  static Future<String> getDeviceId() {
    return DeviceId.getID;
  }

  /* 获取版本号信息 */
  static Future<String> getVersion() {
    return PackageInfo.fromPlatform().then((PackageInfo info) {
      return info.version;
    });
  }
}
