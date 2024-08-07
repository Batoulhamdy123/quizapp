import 'package:flutter/material.dart';
import 'package:quizapp/login/controller/cubit/login_cubit.dart';
import 'package:quizapp/login/view/pages/login_page.dart';
import 'package:quizapp/signup_page/controller/cubit/sigup_cubit.dart';
import 'package:quizapp/signup_page/view/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmailPage(
        controller: LoginCubit(),
        controller2: SigupCubit(),
      ),
    );
  }
}
