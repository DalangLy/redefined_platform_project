import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  final Function(Map<String, dynamic> json,) onSubmit;
  const LoginForm({Key? key, required this.onSubmit,}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String username;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Username',
            ),
            initialValue: 'bernie.kovacek@example.org',
            validator: (String? value){
              if(value == null || value.isEmpty){
                return 'please input an email';
              }
              return null;
            },
            onSaved: (String? value){
              if(value == null || value.isEmpty){
                return;
              }
              username = value;
            },
          ),
          const Divider(color: Colors.transparent,),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
            initialValue: 'password',
            obscureText: true,
            validator: (String? value){
              if(value == null || value.isEmpty){
                return 'please input the password';
              }
              return null;
            },
            onSaved: (String? value){
              if(value == null || value.isEmpty){
                return;
              }
              password = value;
            },
          ),
          const Divider(color: Colors.transparent,),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: (){
                final FormState? _form = _formKey.currentState;
                if(_form == null){
                  return;
                }
                if(_form.validate()){
                  _form.save();

                  widget.onSubmit({
                    'username': username,
                    'password': password,
                    'grant_type': 'password',
                    'client_id': '95e0daa5-3f15-41da-b0e9-ff5bf1b3a95d',
                    'client_secret': 'BA2sQEy29sAf0iA5CajtaFLkjeiH9TqrUEbW4fsD',
                  });
                }
              },
              child: const Text('LOGIN'),
            ),
          ),
        ],
      ),
    );
  }
}
