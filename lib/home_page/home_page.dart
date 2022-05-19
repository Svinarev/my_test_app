import 'package:flutter/material.dart';
import '../global/global.dart';
import '../screens/user_page.dart';

///Home Page

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8D282),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xff94493A),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.person_outline, color: Colors.white),
                ),
                SizedBox(width: 12.0),
                Text(
                  'User Name',
                  style: TextStyle(
                    fontSize: 26,
                    color: Color(0xff94493A),
                  ),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {
                      print(myNameController);
                    },
                    icon: Icon(
                      Icons.settings,
                      color: Color(0xff94493A),
                      size: 30,
                    )),
              ],
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ListView.builder(
                    itemCount: source.length,
                    itemBuilder: (context, index) {
                      String keyTest = source.keys.elementAt(index);
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> UserPage(keyId: keyTest,)));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Color(0xffDAB163),
                                borderRadius: BorderRadius.circular(5.0)

                            ),
                            child: Row(
                              children: [
                                Image.network('${source[keyTest]['icon_uri']}',width: 70,height: 70,),
                                SizedBox(width: 10.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(source[keyTest]['name']['name-EUru'],style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19),),
                                    SizedBox(height: 5.0),
                                    Text(source[keyTest]['personality']),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              ),
          ],
        ),
      ),
    );
  }
}
