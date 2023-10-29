import 'package:flutter/material.dart';
import 'package:navigator/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Halaman Login'),
          backgroundColor: const Color.fromARGB(255, 18, 19, 19),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
                  Icon(
                    Icons.vpn_lock,
                    color:Color.fromARGB(224, 59, 59, 59),
                    size: 90,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "SELAMAT DATANG",
                      style: TextStyle(
                        fontSize: 30,
                        color: const Color.fromARGB(255, 77, 75, 75),
                        fontWeight: FontWeight.w900,
                        letterSpacing: 5,
                      ),
                    ),
                    SizedBox(height: 50),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(30),
                        )
                      ),
                    ),
                    SizedBox(height: 50),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(30),
                        )
                      ),
                    ),
                    SizedBox(height: 30,),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(),
                        ),
                      );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(110, 35),
                    backgroundColor: Colors.black,
                  ),
                  icon: Icon(Icons.login),
                  label: Text("LOGIN",
                  style: TextStyle(
                    fontSize: 15),
                  )
                  )
            ],
          ),
        )
     );
  }
}
