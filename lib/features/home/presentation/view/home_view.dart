import 'package:artefacta_app/core/utils/app_functions/custom_navigate.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              customReplacementNavigate(context, '/signIn');
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(child: Text('home view')),
    );
  }
}
