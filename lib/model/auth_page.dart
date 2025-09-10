import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/model/login_or_register.dart';
import '../screen/home_page.dart';
import '../screen/login_page.dart';


class AuthPAge extends StatelessWidget {
  const AuthPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return HomePage();
          }else{
            return LoginOrRegister();
          }
        }
      )
    );
  }
}
