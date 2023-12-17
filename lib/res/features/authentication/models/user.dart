import 'package:flutter/material.dart';
import 'package:tarotit/res/constants/roles.dart';

class PUserModel extends ChangeNotifier {
  int _id = 0;

  USERTYPE _userType = USERTYPE.user;

  int _role = 0;
  String _roleName = "User";
  String _userName = "";
  String _password = "";
  String _email = "";
  String _phone = "";
  String _city = "";
  String _address = "";
  // String _bioInfo = "";
  String _profilePath = "";

  final bool _isActive = false;

  int get id => _id;

  USERTYPE get userType => _userType;
  int get role => _role;
  String get roleName => _roleName;
  String get password => _password;
  String get lastName => _userName;
  String get email => _email;
  String get phone => _phone;
  String get address => _address;
  String get city => _city;
  // String get bioInfo => _bioInfo;
  String get profilePath => _profilePath;

  bool get isActive => _isActive;

  // String get fullName =>
  //     _lastName.isEmpty ? _firstName : "$_firstName $_lastName";

  // String get fullFirstCharacters => _lastName.isEmpty
  //     ? _firstName.characters.first
  //     : _firstName.trim().characters.first + _lastName.trim().characters.first;

  // String get fullNameWithSaluration => _lastName.isEmpty
  //     ? "$_salutation _firstName"
  //     : "$_salutation $_firstName $_lastName";


  // bool get isSkipUser => _email.contains("skip") ;

  USERTYPE getUserType(int role) {
    switch (role) {
      case 1:
        return USERTYPE.user;
      
      default:
        return USERTYPE.serviceProvider;
    }
  }

  void setUserID(int id) {
    _id = id;
    notifyListeners();
  }

  void setUserType(int type) {
    _role = type;
    _userType = getUserType(type);
    notifyListeners();
  }

  // void setSaluration(String salutation) {
  //   _salutation = salutation;
  //   notifyListeners();
  // }

  void setuserName(String name) {
    _userName = name;
    notifyListeners();
  }

  // void setLastName(String name) {
  //   _lastName = name;
  //   notifyListeners();
  // }

  void setPhone(String phone) {
    _phone = phone;
    notifyListeners();
  }

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  void setAddress(Map userAddress) {
    _address = userAddress["address"];
    _city = userAddress["city"];
    // _state = userAddress["state"];
    // _country = userAddress["country"];
    notifyListeners();
  }

  // void setBioProfile(Map user) {
  //   _profilePath = krURL + user["profilePath"];
  //   // _bioInfo = user["bioInfo"];
  // }

  void setAll(Map user) {
    setUserID(user["userId"]);
    _password = user["userPassword"];
    setUserType(user["userRoleId"]);

    setuserName(user["username"]);
    setEmail(user["userEmail"]);


    if (user["roleName"] != null) {
      _roleName = user["roleName"];
    }

    if (user["profileImageCompletePath"] != null) {
      _profilePath = user["profileImageCompletePath"];
    }
    // setPhone(user["phone"]);

    // setSaluration(user["salutation"]);

    // setBioProfile(user);

    // setAddress(user);

    notifyListeners();
  }

  void removeAll() {
    _id = 0;
    _address = "";
    _userName = "";
    _city = "";
    _email = "";
    _phone = "";
    notifyListeners();
  }
}
