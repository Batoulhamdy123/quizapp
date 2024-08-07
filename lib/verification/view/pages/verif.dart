//import 'package:first_flutter/features/auth/verification/view/components/RequiredWidget.dart';
//import 'package:first_flutter/features/registeration/view/pages/registeration_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:quizapp/context_ex.dart';
import 'package:quizapp/verification/controller/cubit/verification_cubit.dart';

// ignore: must_be_immutable
class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerificationCubit(),
      child: BlocBuilder<VerificationCubit, VerificationState>(
        builder: (context, state) {
          final VerificationCubit cubit = context.read<VerificationCubit>();
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Verification Page'),
              backgroundColor: const Color.fromARGB(197, 57, 122, 213),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 13, horizontal: 7),
                      child: Text(
                        "verification   ",
                        style: TextStyle(
                          color: Color.fromARGB(223, 9, 9, 9),
                          fontSize: 30,
                        ),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                      child: Text(
                        "enter the verify code   ",
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(233, 204, 16, 192)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 40),
                      child: PinCodeTextField(
                        mainAxisAlignment: MainAxisAlignment.center,
                        appContext: context,
                        pastedTextStyle: TextStyle(
                          color: Colors.green.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                        length: 5,
                        obscureText: true,
                        obscuringCharacter: '*',
                        // obscuringWidget: const FlutterLogo(
                        //   size: 24,
                        // ),
                        blinkWhenObscuring: true,
                        animationType: AnimationType.fade,
                        validator: (v) {
                          if (v!.length < 3) {
                            return "I'm from validator";
                          } else {
                            return null;
                          }
                        },
                        pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(18),
                            fieldHeight: context.height / 7,
                            fieldWidth: context.width / 9,
                            activeFillColor: Colors.white,
                            inactiveFillColor: Colors.grey,
                            inactiveColor: Colors.black,
                            activeColor: Colors.black,
                            selectedFillColor: Colors.black,
                            fieldOuterPadding:
                                EdgeInsets.only(right: context.width / 30)),
                        cursorColor: Colors.white,
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: true,
                        // errorAnimationController: errorController ,
                        controller: cubit.pinCodeController,
                        keyboardType: TextInputType.number,
                        boxShadows: const [
                          BoxShadow(
                            offset: Offset(0, 1),
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ],
                        onCompleted: (v) {
                          debugPrint("Completed");
                        },
                        // onTap: () {
                        //   print("Pressed");
                        // },
                        // onChanged: (value) {
                        //   debugPrint(value);
                        //   setState(() {
                        //    currentText = value;
                        //   }
                        //   );
                        // },
                        beforeTextPaste: (text) {
                          debugPrint("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 40),
                        child: IconButton(
                            onPressed: cubit.onTapConfirm,
                            icon: Icon(
                              Icons.done,
                              size: 35,
                              color: Colors.black,
                            )))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
