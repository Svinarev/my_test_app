import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'global.dart';

///Сохранение Имени
saveUser() async {
  final saveLogin = await SharedPreferences.getInstance();
  await saveLogin.setString('name', myNameController.text);
}
///Получение Имени
getUser() async {
  final saveLogin = await SharedPreferences.getInstance();
  myNameController.text = saveLogin.getString('name')!;
}

///Функция получения списка имен =========================================
getListUser() async {
  var respons = await http.get(Uri.parse('http://acnhapi.com/v1/villagers'));
  source = json.decode(respons.body);
  // print(source);
}
///=======================================================================

///Функция получения списка имен =========================================
getImageUser() async {
  var respons = await http.get(Uri.parse('https://avatars.dicebear.com/api/croodles/:seed.svg'));
  listImageUser = json.decode(respons.body);
  print(listImageUser);
}
///=======================================================================










