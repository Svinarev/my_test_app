import 'package:app_test/global/global.dart';
import 'package:flutter/material.dart';
import '../global/global_function.dart';

///Вход

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}


class _AuthState extends State<Auth> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUser();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xffE8D282),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80.0),
            Container(
              width: 215,
              height: 215,
              decoration: BoxDecoration(
                color: Color(0xffDAB163),
                borderRadius: BorderRadius.circular(100),
              ),
                child: Image.asset('assets/person 1.png')),
            SizedBox(height: 80.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Column(
                children: [
                  Text('Задайте имя'),
                  Text('чтобы сгенерировать аватар'),
                  SizedBox(height: 30),
                  TextField(
                    controller: myNameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: 'Имя',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 76.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        primary: Color(0xffCE9248)),
                      onPressed: () async {
                        if(myNameController.text != ''){
                          await getListUser();
                          // await getImageUser();
                          saveUser();
                          Navigator.pushNamed(context, '/HomePage');
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Введите логин'),));
                        }

                      },
                      child: Text(
                        'Войти',
                        style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }

}

