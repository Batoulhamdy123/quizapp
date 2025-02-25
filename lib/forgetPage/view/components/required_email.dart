import 'package:flutter/material.dart';
import 'package:quizapp/forgetPage/controller/cubit/forgetcubit_cubit.dart';
import 'package:quizapp/validation.dart';

class RequiredWidget extends StatelessWidget {
  RequiredWidget({super.key, required this.controller});
  final ForgetcubitCubit controller;
  //TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: controller.emailControllerfor,
            keyboardType: TextInputType.name,
            validator: MyValidation().validateEmail,
            /* inputFormatters: [
              FilteringTextInputFormatter.allow(
                  RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')),
              // FilteringTextInputFormatter.deny(RegExp(r'(A-Z)'))
            ],*/
            decoration: decoration)
      ],
    );
  }

  InputDecoration decoration = InputDecoration(
    suffixIcon: const Icon(Icons.email),
    hintText: 'xxxx@gmail.com',
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Color.fromARGB(183, 31, 48, 110))),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Color.fromARGB(221, 19, 21, 29))),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Color.fromARGB(183, 244, 70, 17))),
  );
}
