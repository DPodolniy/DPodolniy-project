import 'package:flutter/material.dart';
import 'package:untitled/validators/email.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Вход'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Логотип приложения
                Image.asset('assets/logo_placeholder.png', height: 100),
                SizedBox(height: 20), // Отступ между логотипом и инпутами
                TextFormField(
                  decoration: InputDecoration(labelText: 'Электронная почта'),
                  validator: emailValidator,
                  onSaved: (value) => _email = value ?? '',
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Пароль'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, введите пароль';
                    }
                    return null;
                  },
                  onSaved: (value) => _password = value ?? '',
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print('Email: $_email, Password: $_password');
                      Navigator.pushReplacementNamed(context, '/home');
                    }
                  },
                  child: Text('Войти'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/register');
                  },
                  child: Text('Нет аккаунта? Зарегистрируйтесь'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
