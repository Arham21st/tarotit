import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const FlutterSecureStorage secureStorage = FlutterSecureStorage();

Future writeOnStorage(key, data) async {
  secureStorage.write(key: key, value: data);
  return;
}

Future readFromStorage(key) async {
  return secureStorage.read(key: key);
}

Future<dynamic> deleteFromStorage(key) async {
  secureStorage.delete(key: key);
}

Future clearAllFromStorage() async {
  await secureStorage.deleteAll();
}