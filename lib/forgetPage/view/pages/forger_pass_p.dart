//import 'package:first_flutter/features/registeration/view/widgets/Password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizapp/forgetPage/controller/cubit/forgetcubit_cubit.dart';
import 'package:quizapp/forgetPage/view/components/required_pass.dart';
import 'package:quizapp/verification/view/pages/verif.dart';
//import 'package:flutter/widgets.dart';

class Forgetpassword2 extends StatelessWidget {
  const Forgetpassword2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetcubitCubit(),
      child: BlocBuilder<ForgetcubitCubit, ForgetcubitState>(
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text(
                  "confirm password   ",
                  style: TextStyle(
                    color: Color.fromARGB(254, 244, 241, 241),
                  ),
                ),
                backgroundColor: const Color.fromARGB(255, 85, 64, 203),
              ),
              body: BlocBuilder<ForgetcubitCubit, ForgetcubitState>(
                builder: (context, state) {
                  final ForgetcubitCubit cubit =
                      context.read<ForgetcubitCubit>();
                  return Column(children: [
                    RequiredWidgwtPass(
                      controller: ForgetcubitCubit(),
                    ),
                    FilledButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(227, 213, 88, 218)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerificationPage()),
                        );
                      }
                      // cubit.onpressedButton,
                      ,
                      child: const Text(
                        "CHECK  ",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ]);
                },
              ));
        },
      ),
    );
  }
}
/* Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerificationPage()),
                    );*/