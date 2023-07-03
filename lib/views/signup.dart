import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:frontend/controllers/registration.dart';
import 'controllers.dart';






class SignupPage extends StatelessWidget {
   SignupPage({super.key});

  final MyController controller = Get.put(MyController());
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
           
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: IconButton(onPressed:(){  Get.back(); },icon: const Icon(Icons.arrow_back_ios))),
               Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/1.png'))
                ),
                height: 100,
                width: 200,
                padding: const EdgeInsets.all(0),
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0)
               ),
                Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(0),
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const  Text('Sign Up', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),  )),
                Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(0),
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: const  Text('Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum', )),
                 Container(
                   margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                   child: IntlPhoneField(
                    controller: AppController.phoneController,
                    decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                    borderSide: BorderSide(),),),
                    initialCountryCode: 'DZ',
                    onChanged: (phone) {},),
                 ),
                // Container( 
                //  margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                //  child: TextFormField(
                //   controller: phoneController,
                //    decoration: const InputDecoration(
                //     labelText: 'Phone numbe',
                //     hintText: 'Enter your phone number',
                //     prefixIcon: Icon(Icons.person),
                //     border: OutlineInputBorder(),
                //   ),),),
               
                
              
                Container( 
                 margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                 child: TextFormField(
                  controller: AppController.nameController,
                   decoration: const InputDecoration(
                    labelText: 'Full name',
                    hintText: 'Enter your full name',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),),),
               
                
      
                 Container(
                  margin: const EdgeInsets.all(15),
                  width: double.infinity,
                  height: 50,
                   child: ElevatedButton(
                    onPressed: () {
                      
                       final phoneNumber = '+213'+AppController.phoneController.text;
                       final fullName = AppController.nameController.text;
                      controller.register(phoneNumber, fullName);
                    },
                    style: ButtonStyle( backgroundColor: MaterialStateProperty.all(Colors.black),
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
                    ),
                    child: const  Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 20),),
                    
                             
                    ),
                 ),
              const SizedBox(height: 20),
            
          
                const SizedBox(height: 40),
              
               
              
            ],
          ),
        ),
      ), 
    );
  }
}
