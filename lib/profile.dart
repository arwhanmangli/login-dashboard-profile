import 'package:flutter/material.dart';

class Ketiga extends StatelessWidget {
  const Ketiga({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            
            title: Text("Aplikasi Profil"),

            backgroundColor: Colors.blue,
          ),
          body: SafeArea(
              child: Column(
            children: [
              Image(image: AssetImage('assets/images/saya.jpg'), width: 300, height: 300,),
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text("Arwhan Mangli")), Text("21670088"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [Icon(Icons.phone), Text("082265060904")],
                  ),
                  Column(
                    children: [Icon(Icons.mail), Text("arwanmangli9@gmail.com")],
                    
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(110, 35),
                      backgroundColor: Colors.blueGrey,
                    ),
                    icon: Icon (Icons.login),
                    label: Text("Logout",
                    style: TextStyle(fontSize: 10)
                    ),
                    ),
                ],   
              )
            ],
          )),
        ));
  }
}
  
