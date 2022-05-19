import 'package:app_test/global/global.dart';
import 'package:flutter/material.dart';

///Карточка User

class UserPage extends StatelessWidget {
  String keyId;
  UserPage({Key? key,required this.keyId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8D282),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.chevron_left, size: 30)),
                ],
              ),
              SizedBox(height: 5.0),
              UserCard(
                imagesLink: '${source[keyId]['image_uri']}',
                name: '${source[keyId]['name']['name-EUru']}',
                text: '${source[keyId]['catch-translations']['catch-EUru']}',
                kind: '${source[keyId]['subtype']}',
                personality: '${source[keyId]['personality']}',
                birthday: '${source[keyId]['birthday-string']}',
                pol: '${source[keyId]['gender']}',
                hobby: '${source[keyId]['hobby']}',
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        primary: Color(0xffCE9248),
                      ),
                      onPressed: () async {
                        // await getListUser();
                        Navigator.pushNamed(context, '/UserLoginPage');
                      },
                      child: Text(
                        'Скачать аватар',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  String imagesLink;
  String name;
  String text;
  String kind;
  String personality;
  String birthday;
  String pol;
  String hobby;

  UserCard({
    required this.imagesLink,
    required this.name,
    required this.text,
    required this.kind,
    required this.personality,
    required this.birthday,
    required this.pol,
    required this.hobby,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(imagesLink),
        SizedBox(height: 15.0),
        Text(name,
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
        SizedBox(height: 10.0),
        Text(text),
        SizedBox(height: 10.0),
        Text('Вид: $kind'),
        SizedBox(height: 10.0),
        Text('Личность: $personality'),
        SizedBox(height: 10.0),
        Text('День рождение: $birthday'),
        SizedBox(height: 10.0),
        Text('Пол: $pol'),
        SizedBox(height: 10.0),
        Text('Хобби: $hobby'),
      ],
    );
  }
}
