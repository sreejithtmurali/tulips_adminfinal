import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips_admin/app/app.router.dart';

import '../../app/utils.dart';


class SignInScreenViewModel extends BaseViewModel {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void navv(){
    if(formKey.currentState!.validate()){
    navigationService.pushNamedAndRemoveUntil(Routes.homeScreen);}
  }
  }
