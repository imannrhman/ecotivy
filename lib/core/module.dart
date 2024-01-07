import 'package:ecotivy/utils/resource_manager.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:jovial_svg/jovial_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class CoreModule {
  @preResolve
  Future<SharedPreferences> get prefs async => await SharedPreferences.getInstance();

}
