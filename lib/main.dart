import 'package:absensi/view/homepage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'view/login.dart';
import 'package:absensi/data/sharepref.dart';
import 'view/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var login = prefs.getString('login');
  runApp(MaterialApp(title: "cuk",home: login == null ? Login() : Homepage()));
}

class MyApp extends StatelessWidget{
  Widget home(login){
    print(getLogin().then((it){
      return it;
    }));
    if(login == '0'){
       return new Login();
    }else if(login == '1'){
      return new Homepage();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'ABSEN',
      home: home('1'),
    );
  }
}