import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

statusLogin(String int) async{
  final spref = await SharedPreferences.getInstance();
  spref.setString('login', int);
}

Future getLogin() async{
  final prefs = await SharedPreferences.getInstance();
  final value = prefs.getString('login') ?? '0';
  print('ajg'+value);
  return value;
}