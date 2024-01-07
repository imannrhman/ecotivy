import 'package:ecotivy/di/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';



class SharedPreferencesHelper {
  Future<bool> setValuesBool(String key, bool value) async => await getIt<SharedPreferences>().setBool(key, value);
  bool? getValuesBool()  => getIt<SharedPreferences>().getBool('key');
}