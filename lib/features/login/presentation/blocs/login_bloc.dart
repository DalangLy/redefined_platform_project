import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:redefined_platform_project/core/errors/failure.dart';
import 'package:redefined_platform_project/features/login/domain/use_cases/login_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _useCase;
  LoginBloc(this._useCase) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async{
      if(event is Login){
        emit(LoginInProgress());
        try{
          await _useCase(json: event.json);
          emit(LoginSuccess());
        }on Failure catch(e){
          emit(LoginFailed(message: e.getErrorMessage()));
        }
        catch(e){
          emit(LoginFailed(message: e.toString()));
        }
      }
    });
  }

  void login({required Map<String, dynamic> json}){
    add(Login(json: json));
  }
}
