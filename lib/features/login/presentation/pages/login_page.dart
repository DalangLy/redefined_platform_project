import 'package:flutter/material.dart';
import 'package:redefined_platform_project/features/login/presentation/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _buildLoginLayout(),
        ),
      ),
    );
  }

  Widget _buildLoginLayout(){
    return SizedBox(
      width: 300,
      child: LoginForm(
        onSubmit: (Map<String, dynamic> json){

        },
      ),
    );
  }
}
