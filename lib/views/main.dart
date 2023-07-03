import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
// import 'login.dart';
import 'signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner : false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        focusColor: Colors.black,
        hoverColor: Colors.black,
        primaryColor: Colors.black,

        useMaterial3: true,
      ),
      home:  const MyHomePage(),
    );
  }
}



class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
           
            children: <Widget>[
              const SizedBox(height: 60),
               Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/1.png'))
                ),
                height: 300,
                width: 400,
                padding: const EdgeInsets.all(0),
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0)
               ),
              const SizedBox(height: 60),
               Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(0),
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const  Text('Lorem Ipsum Lorem ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),  )),
                Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(0),
                margin: const EdgeInsets.fromLTRB(20, 0, 100, 10),
                child: const  Text('Lorem Ipsum Lorem Ipsum Lorem Lorem Ipsum Lorem Ipsum', )),
                 const SizedBox(height: 50,),
                  Container(
                  margin: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                  width: double.infinity,
                  height: 50,
                   child: ElevatedButton(
                    onPressed: () {
                       Get.to( HomePage());
                    },
                    style: ButtonStyle( backgroundColor: MaterialStateProperty.all(Colors.black),
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
                    ),
                    child: const  Text('Sign In', style: TextStyle(color: Colors.white, fontSize: 20),),
                    
                             
                    ),
                 ),
                  Container(
                  margin: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                  width: double.infinity,
                  height: 50,
                  decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                  width: 1,
                ),
                  ),
                  
                   child: ElevatedButton(
                    onPressed: () {
                      
                     Get.to( SignupPage());
                   
                    },
                    style: ButtonStyle( backgroundColor: MaterialStateProperty.all(Colors.white),
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),),),),
                    child: const  Text('Sign Up', style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w500),),),),         
              
            ],
          ),
        ),
      ), 
    );
  }
}
