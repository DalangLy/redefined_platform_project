import 'package:dio/dio.dart';
import 'package:redefined_platform_project/core/errors/unknown_failure.dart';
import 'package:redefined_platform_project/features/login/data/data_sources/i_login_remote_data_source.dart';

class LoginViaAPI implements ILoginRemoteDataSource{
  final Dio _httpClient;

  LoginViaAPI(this._httpClient);

  @override
  Future<Map<String, dynamic>> login({required Map<String, dynamic> json}) async{
    try{
      final Response<dynamic> response = await _httpClient.post(
        'http://127.0.0.1:8000/oauth/token',
        data: json,
      );
      if(response.statusCode == 200){
        print(response.data);
        return response.data;
      }
      throw UnknownFailure(message: 'fff');
    }catch(e){
      throw UnknownFailure(message: 'message');
    }
  }
}