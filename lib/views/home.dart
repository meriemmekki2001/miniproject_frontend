import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:frontend/controllers/registration.dart';
import 'controllers.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
final MyController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: OtpTextField(
        numberOfFields: 6,
        borderColor: Color(0xFF512DA8),
        showFieldAsBox: true, 
        onCodeChanged: (String code) {      
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            final phoneNumber = '+213'+AppController.phoneController.text;
            controller.verifyCODE(phoneNumber, verificationCode); 
            print(phoneNumber);
            print(verificationCode);
        }, // end onSubmit
    ), ),
    );
    
    }}