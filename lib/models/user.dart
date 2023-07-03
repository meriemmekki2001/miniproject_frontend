import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    int id;
    String email;
    String fullName;
    String userType;
    String password;

    Welcome({
        required this.id,
        required this.email,
        required this.fullName,
        required this.userType,
        required this.password,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: json["id"],
        email: json["email"],
        fullName: json["full_name"],
        userType: json["user_type"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "full_name": fullName,
        "user_type": userType,
        "password": password,
    };
}
