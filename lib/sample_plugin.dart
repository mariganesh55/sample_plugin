import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'sample_plugin_platform_interface.dart';

class SamplePlugin {
  Future<String?> getPlatformVersion() {
    return SamplePluginPlatform.instance.getPlatformVersion();
  }

  Future<bool> authenticate(String username, String password) async {
    // Perform authentication using private methods
    bool isAuthenticated = await _performAuthentication(username, password);
    return isAuthenticated;
  }

  // Private method
  static Future<bool> _performAuthentication(
      String username, String password) async {
    // Simulate authentication process (replace with your actual code)
    await Future.delayed(Duration(seconds: 2));
    return username == 'user' && password == 'password';
  }

  void showToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
