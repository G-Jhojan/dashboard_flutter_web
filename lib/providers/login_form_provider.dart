import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier{
  String email = '';
  String password = '';

  validateForm(){
    print('Email: $email');
    print('Password: $password');
  }
}
