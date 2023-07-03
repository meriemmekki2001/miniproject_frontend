import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const String baseUrl = 'http://127.0.0.1:8000';

  Future<bool> sendOTP(String phoneNumber, String fullName) async {
    final headers = {
      'Content-Type': 'application/json',
    };

     final payload = {
      'phone_number': phoneNumber,
      'full_name': fullName,
    };

    final response = await http.post(
      Uri.parse('$baseUrl/auth/register/'),
    headers: headers,
     body: json.encode(payload),
    );

    if (response.statusCode == 201) {
      
      
      return true;
    } else {
     
      return false;
    }
  }

  Future<bool> verifyOTP(String phoneNumber, String verificationCode) async {
    // final headers = {
    //   'Content-Type': 'application/json',
    // };

     final payload = {
      'phone_number': phoneNumber,
      'verificationCode': verificationCode,
    };

    final response = await http.post(
      Uri.parse('$baseUrl/auth/verify-otp/'),
    // headers: headers,
     body: json.encode(payload),
    );

    if (response.statusCode == 200) {
      
      
      return true;
    } else {
     
      return false;
    }
  }
}
