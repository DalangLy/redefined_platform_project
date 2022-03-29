import 'package:redefined_platform_project/core/errors/unknown_failure.dart';
import 'package:redefined_platform_project/core/token/i_token_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesTokenStorage implements ITokenStorage{

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void save({required Map<String, dynamic> json}) async{
    try{
      final SharedPreferences prefs = await _prefs;
      prefs.setStringList('token', [
        json['access_token'],
      ]);
    }
    catch(e){
      throw UnknownFailure(message: 'Failed to save token');
    }
  }
}