import 'package:redefined_platform_project/features/login/domain/repositories/i_login_repository.dart';

class LoginUseCase{
  final ILoginRepository _repository;

  LoginUseCase(this._repository);

  Future<void> call({required Map<String, dynamic> json,}){
    return _repository.login(json: json);
  }
}