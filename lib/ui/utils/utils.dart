import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  static Utils? _instance;

  Utils._();

  static Utils get instance => _instance ??= Utils._();

  Future<void> launchWebUrl(String url, {bool isNewTab = true}) async {
    await launchUrl(
      Uri.parse(url),
      webOnlyWindowName: isNewTab ? '_blank' : '_self',
    );
  }

  Future loadData(String path) async {
    final jsonString = await rootBundle.loadString(path);
    var data = jsonDecode(jsonString);
    return data;
  }
}
