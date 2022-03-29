import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redefined_platform_project/features/login/presentation/blocs/login_bloc.dart';
import 'package:redefined_platform_project/features/login/presentation/widgets/login_form.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) async{
        if(state is LoginInProgress){
          _showLoadingDialog(context);
        }
        else{
          Navigator.of(context, rootNavigator: true,).pop();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: _buildLoginLayout(context),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginLayout(context) {
    return SizedBox(
      width: 300,
      child: LoginForm(
        onSubmit: (Map<String, dynamic> json) {
          BlocProvider.of<LoginBloc>(context).login(json: json);
        },
      ),
    );
  }

  Future<dynamic> _showLoadingDialog(context) async {
    return showDialog<AlertDialog>(
      context: context,
      barrierDismissible: false, // user must tap button!
      useRootNavigator: true,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Column(
              children: const <Widget>[
                CircularProgressIndicator(),
                Text('Login...'),
              ],
            ),
          ),
        );
      },
    );
  }
}