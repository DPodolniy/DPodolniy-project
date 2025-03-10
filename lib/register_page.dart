import 'package:flutter/material.dart';
import 'package:untitled/validators/email.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  String _username = '';
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Регистрация'),
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
                  decoration: InputDecoration(labelText: 'Имя пользователя'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, введите имя пользователя';
                    }
                    return null;
                  },
                  onSaved: (value) => _username = value ?? '',
                ),
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
                      print('Username: $_username, Email: $_email, Password: $_password');
                      Navigator.pushReplacementNamed(context, '/home');
                    }
                  },
                  child: Text('Зарегистрироваться'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  child: Text('Уже есть аккаунт? Авторизуйтесь'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
