import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.red[900]),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "https://www.worldanimalprotection.us/cdn-cgi/image/width=1280,format=auto/siteassets/images/farming/pigs/pig-in-field-getty.png",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("sirichai sookluan",
                    style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text("sirichai.sookluan@e-tech.ac.th",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,

                    ),),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(

                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.phone, color: Colors.green),
                      ),
                      Column(
                        children: [Text("เบอร์โทรศัพท์"), Text("092-424-2911")],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ],
                  ),

                  SizedBox(height: 15),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.cake, color: Colors.red),
                      ),
                      Column(children: [Text("วันเกิด"), Text("30/06/2005")],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),

                    ],
                  ),

                  SizedBox(height: 15),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.location_on, color: Colors.orange),
                      ),
                      Column(children: [Text("ที่อยุ่"), Text("ชลบุรี")],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ],
                  ),

                  SizedBox(height: 15),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.school, color: Colors.purple),
                      ),
                      Column(children: [Text("การศึกษา"), Text("วิทยาลัยเทคโนโลยีภาคตะวันออก")],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    child: Text("Go to Second"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
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

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top:20, bottom:20,left: 20),

              child: ClipOval(
                child: Image.network(
                  "https://www.worldanimalprotection.us/cdn-cgi/image/width=1280,format=auto/siteassets/images/farming/pigs/pig-in-field-getty.png",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,

                ),
              ),

            ),

           Row(
             children: [
               Container()
             ],
           )



          ],
        )));


  }
}
