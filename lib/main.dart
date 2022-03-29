import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redefined_platform_project/core/token/shared_preferences_token_storage.dart';
import 'package:redefined_platform_project/features/login/data/data_sources/login_via_api.dart';
import 'package:redefined_platform_project/features/login/data/repositories/login_repository.dart';
import 'package:redefined_platform_project/features/login/domain/use_cases/login_use_case.dart';
import 'package:redefined_platform_project/features/login/presentation/pages/login_page.dart';

import 'features/login/presentation/blocs/login_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => LoginBloc(LoginUseCase(LoginRepository(LoginViaAPI(Dio(),), SharedPreferencesTokenStorage()))),
        child: const LoginPage(),
      ),
    );
  }
}