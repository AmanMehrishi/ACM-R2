import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                width: double.infinity,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB2nN0WZupNxJUtdTH4V3bKheKwu-QZGM1ew&usqp=CAU'),

              ),
              SizedBox(height: 10,),
              Text(
                  'Aman Mehrishi',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,

                ),
              ),
              Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                  ),

              ),
              SizedBox(
                width: 100,
                height: 20,
                child: Divider(
                   color: Colors.black,
                ),
              ),
              Card(

                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 40),
                  child: ListTile(


                    leading:  Icon(
                        Icons.phone,
                        color: Colors.white,

                      ),

                      title: Text(
                          '+91 9116820823',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                  ),
                ),
              ),
               
               SizedBox(height: 20,),
               Card(

                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 40),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      'f20220068@pilani.bits-pilani.ac.in',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
    ],
    ),
    ),
      ),
    );
  }

  }

