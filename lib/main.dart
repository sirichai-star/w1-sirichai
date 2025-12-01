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
                  Text(
                    "sirichai sookluan",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "sirichai.sookluan@e-tech.ac.th",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
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
                      Column(
                        children: [Text("วันเกิด"), Text("30/06/2005")],
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
                      Column(
                        children: [Text("ที่อยุ่"), Text("ชลบุรี")],
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
                      Column(
                        children: [
                          Text("การศึกษา"),
                          Text("วิทยาลัยเทคโนโลยีภาคตะวันออก"),
                        ],
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
      backgroundColor: Colors.redAccent.shade100,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: ClipOval(
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4yLdd3VNZogLkIFf10AJ953foWGtissThXw&s",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 40,
                        child: Row(
                          children: [
                            Column(children: [Text("5"), Text("กำลังติดตาม")]),
                            SizedBox(width: 15),
                            VerticalDivider(
                              thickness: 1,
                              color: Colors.grey[400],
                              width: 1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        height: 40,
                        child: Row(
                          children: [
                            Column(children: [Text("31"), Text("ผู้ติดตาม")]),
                            SizedBox(width: 15),
                            VerticalDivider(
                              thickness: 1,
                              color: Colors.grey[400],
                              width: 1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(children: [Text("300"), Text("ถูกใจและบันทึก")]),
                    ],
                  ),
                  SizedBox(width: 20, height: 20),
                  Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "sirichai",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.verified, color: Colors.blue),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.tiktok,color: Colors.grey[500],size: 20,),
                        Text(
                          "sirichai",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                          ),
                        ),
                        Icon(Icons.arrow_drop_down_outlined,color: Colors.grey[500],size: 20,),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () => Navigator.pushNamed(context, '/second'),
                          child: Text("ติดตาม",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(300, 40),
                            backgroundColor: Colors.yellow,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(width: 50,height: 13,),
                              Icon(Icons.share,color: Colors.black,)
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 0,bottom: 10,left: 12),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Image.network(
                          "https://s3gw.inet.co.th:8082/smegp-image-1/prod/V1/19062021560306%E0%B8%AB%E0%B8%A1%E0%B8%B9%E0%B9%80%E0%B8%99%E0%B8%B7%E0%B9%89%E0%B8%AD%E0%B9%81%E0%B8%94%E0%B8%87%E0%B8%AA%E0%B8%94.jpg"
                          ,
                          width: 165,
                          height: 300,
                        ),
                        SizedBox(width: 10,),
                        Image.network(
                          "https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/43/02/0211343/0211343_3.jpg"
                          ,
                          width: 180,
                          height: 300,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
