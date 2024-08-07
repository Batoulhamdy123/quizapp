//import 'package:first_flutter/features/auth/registeration/view/pages/phonelogin.dart';
//import 'package:first_flutter/features/auth/sign_up/sign_up.dart';
//import 'package:first_flutter/features/registeration/view/pages/forget_password_e.dart';
//import 'package:first_flutter/features/registeration/view/pages/phonelogin.dart';
//import 'package:first_flutter/features/registeration/view/pages/registeration_page.dart';
//import 'package:first_flutter/features/registeration/view/pages/sign_up.dart';
//import 'package:first_flutter/features/registeration/view/widgets/Email_widget.dart';
//import 'package:first_flutter/features/registeration/view/widgets/Password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizapp/login/controller/cubit/login_cubit.dart';
import 'package:quizapp/login/view/component/button_wid.dart';
import 'package:quizapp/login/view/component/email_wid.dart';
import 'package:quizapp/signup_page/controller/cubit/sigup_cubit.dart';

class EmailPage extends StatelessWidget {
  const EmailPage(
      {super.key, required this.controller2, required this.controller});
  final SigupCubit controller2;
  final LoginCubit controller;
  // final RegerstrationCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                "EMAIL LOGIN  ",
                style: TextStyle(
                  color: Color.fromARGB(254, 244, 241, 241),
                ),
              ),
              backgroundColor: const Color.fromARGB(255, 85, 64, 203),
            ),
            body: ListView(
              //mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EmailField(
                  controller: LoginCubit(),
                ),
                ButtonWidget(
                  //controller: controller,
                  controller2: controller2, controller: controller,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
