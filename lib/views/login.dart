import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
         
          children: <Widget>[
             Container(
              alignment: Alignment.topLeft,
              child: IconButton(onPressed:(){Get.back();}, icon: const Icon(Icons.arrow_back_ios))),
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
               const SizedBox(height: 100,),
              Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: const  Text('Welcome Back', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),  )),
              Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: const  Text('Log In with an existing account to continue', )),
              Container(
                   margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                   child: IntlPhoneField(
                    decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                    borderSide: BorderSide(),),),
                    initialCountryCode: 'DZ',
                    onChanged: (phone) {},),
                 ),
                
             

               Container(
                margin: const EdgeInsets.all(15),
                width: double.infinity,
                height: 50,
                 child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle( backgroundColor: MaterialStateProperty.all(Colors.black),
                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
                  ),
                  child: const  Text('Log In', style: TextStyle(color: Colors.white, fontSize: 20),),
                  
                           
                  ),
               ),
            const SizedBox(height: 20),
           const  Row(
            mainAxisAlignment: MainAxisAlignment.center,
               children: [
                  Expanded(
                    child: Divider(
                    color:  Color.fromARGB(255, 202, 200, 200),
                    indent: 20,
                    endIndent: 20,
                    thickness: 1,
                              ),
                  ),
            Text('Or via email'),
                 Expanded(
                   child: Divider(
                    color:  Color.fromARGB(255, 202, 200, 200),
                    indent: 20,
                    endIndent: 20,
                    thickness: 1,),
                 ),
               ],
             ),
           const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                margin: const EdgeInsets.fromLTRB(15, 0, 15,0),
                decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                color: Colors.grey.withOpacity(0.5),
                width: 1,
              ),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/google.png'))
                    ),
                    height: 35,
                    width: 35,
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0)
                           ),
                          const SizedBox(width: 10),
                          const  Text('Google', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25, color: Color.fromARGB(255, 59, 59, 59)),)
                  ],
                ),
              ),
              const SizedBox(height: 40),
               Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child:  Row(
                children: [
                    const Text('You don\'t have an account? ', ),
                    GestureDetector(
                    onTap: (){},
                    child: const Text('Sign Up', style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold))),
                ],
              )),
             
            
          ],
        ),
      ), 
    );
  }
}
