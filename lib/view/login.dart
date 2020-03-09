import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  LoginState createState(){
    return new LoginState();
  }
}

class LoginState extends State<Login>{
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontSize: 20.0);
    // TODO: implement build
    final nisField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "NIS",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){},
        child: Text('LOGIN',
        textAlign: TextAlign.center,
        style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset('icon/logo-login.png', fit: BoxFit.contain,),
                ),
                SizedBox(height: 45.0,),
                nisField,
                SizedBox(height: 25.0,),
                loginButton
              ],
            ),
          ),
        ),
      ),
    );
  }
}