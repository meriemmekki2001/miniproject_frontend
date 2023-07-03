import 'package:get/get.dart';
import 'package:frontend/services/api_services.dart';
import 'package:frontend/views/home.dart';

class MyController extends GetxController {
  final ApiService apiService = ApiService();

  Future<void> register(String phoneNumber, String fullName) async {
    final isRegistrationSuccessful = await apiService.sendOTP(phoneNumber, fullName);

    if (isRegistrationSuccessful) {
       Get.offAll(() =>  HomePage()); 
     
      
    } else {
      Get.snackbar('Login Failed', 'Please check your credentials'); 
      
     
    }
  }
   Future<void> verifyCODE(String phoneNumber, String otp) async {
    final verificationSuccessful = await apiService.verifyOTP(phoneNumber, otp);

    if (verificationSuccessful) {
       Get.snackbar('Login succfull', '');
     
      
    } else {
      Get.snackbar('Login Failed', 'Please check your credentials'); 
      
     
    }
  }
}
