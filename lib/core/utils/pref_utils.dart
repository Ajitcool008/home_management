//ignore: unused_import
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  static SharedPreferences? _sharedPreferences;

  PrefUtils() {
    // init();
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setThemeData(String value) {
    return _sharedPreferences!.setString('themeData', value);
  }

  String getThemeData() {
    try {
      return _sharedPreferences!.getString('themeData')!;
    } catch (e) {
      return 'primary';
    }
  }
}









class SharedPreferencesClass{
  Future<void> setData(bool signIn,bool onBoarding,) async{
    SharedPreferences pref =
    await SharedPreferences.getInstance();

    pref.setBool('signIn', signIn);
    pref.setBool('onBoarding', onBoarding);

  }


  Future<Map<String,dynamic>> getData() async{
    SharedPreferences pref =
    await SharedPreferences.getInstance();

    bool signIn = pref.getBool('signIn')?? false;
    bool onBoarding = pref.getBool('onBoarding')?? false;


    Map<String,dynamic> values ={
      'onBoarding':onBoarding,
      'signIn':signIn,

    };
    return values;

  }

}