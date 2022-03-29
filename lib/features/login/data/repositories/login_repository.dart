import 'package:redefined_platform_project/core/errors/failure.dart';
import 'package:redefined_platform_project/core/errors/unknown_failure.dart';
import 'package:redefined_platform_project/core/token/i_token_storage.dart';
import 'package:redefined_platform_project/features/login/data/data_sources/i_login_remote_data_source.dart';
import 'package:redefined_platform_project/features/login/domain/repositories/i_login_repository.dart';

class LoginRepository implements ILoginRepository{
  final ILoginRemoteDataSource _remoteDataSource;
  final ITokenStorage _tokenStorage;
  LoginRepository(this._remoteDataSource, this._tokenStorage,);

  @override
  Future<void> login({required Map<String, dynamic> json}) async{
    try{
      final Map<String, dynamic> _token = await _remoteDataSource.login(json: json);
      _tokenStorage.save(json: _token,);
    }
    on Failure{
      rethrow;
    }
    catch(e){
      throw UnknownFailure(message: 'message');
    }
  }
}