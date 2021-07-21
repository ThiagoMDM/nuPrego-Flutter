import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LitAuthInit(
      authProviders: AuthProviders(emailAndPassword: true, google: true),
      child: MaterialApp(
        home: LitAuthState(
          //chamada para as telas que serão criadas
          authenticated: HomePage(),
          unauthenticated: LoginPage(),
        ),
      ),
    );
  }
}
