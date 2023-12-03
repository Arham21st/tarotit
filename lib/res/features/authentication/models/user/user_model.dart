

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  final String id;
  final String userName;
  final String email;
  final String phoneNo;
  final String password;

  const UserModel({
    required this.id, 
    required this.userName, 
    required this.email, 
    required this.phoneNo, 
    required this.password,
});

toJson(){
  return{
    "id" : id,
    "user_name": userName,
    "email": email,
    "phone_no": phoneNo,
    "password": password
  };
}

factory UserModel.fromSnapshot(DocumentSnapshot<Map<String,dynamic>> document){
  final data = document.data()!;
  return UserModel(
    id: data["id"],
    userName: data["user_name"], 
    email: data["email"], 
    phoneNo: data["phone_no"], 
    password: data["password"]
    );

}
}