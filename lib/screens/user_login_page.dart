import 'package:flutter/material.dart';
import '../global/global.dart';
import '../global/global_function.dart';

class UserLoginPage extends StatefulWidget {
  const UserLoginPage({Key? key}) : super(key: key);

  @override
  State<UserLoginPage> createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8D282),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10.0),
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.chevron_left,size: 30)),
              ],
            ),
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
                  TextFormField(
                    controller: myNameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
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
                        primary: Color(0xffCE9248),
                      ),
                      onPressed: ()  {
                        saveUser();
                        Navigator.pushNamed(context, '/HomePage');
                      },
                      child: Text(
                        'Обновить имя',
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


