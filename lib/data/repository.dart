import 'dart:convert';

import 'package:ankur_portfolio/data/constant.dart';
import 'package:ankur_portfolio/ui/utils/utils.dart';

import '../model/experience_model.dart';

class Repository {
  static Future<List<Experience>> getExperience() async {
    var result = await Utils.instance.loadData(Constant.experienceJSON);

    var experiences =
        (result as List).map((e) => Experience.fromJson(e)).toList();
    return experiences.reversed.toList();
  }
}
