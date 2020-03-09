import 'package:shared_preferences/shared_preferences.dart';

statusLogin(int) async{
  SharedPreferences spref = await SharedPreferences.getInstance();
  await spref.setInt('login', int);
}

getLogin() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int value = prefs.getInt('login');
  return value;
}