import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final user = FirebaseAuth.instance.currentUser!;

  HomePage({super.key});

  void logout(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: logout,
              icon: Icon(Icons.logout)
          )
        ],
      ),
      body: Center(
        child: Text("Login as: ${user.email!}",
        style: TextStyle(
          fontSize: 18
        ),),
      ),
    );
  }
}
