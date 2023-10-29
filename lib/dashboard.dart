import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:navigator/profile.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
      backgroundColor: Color.fromARGB(255, 13, 148, 153),
      ),

      body: ListView(
        children: [
          const SizedBox(height: 30,),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => Ketiga(),
                    )
                  );
                },
            style: ElevatedButton.styleFrom(
            fixedSize: Size(110, 280),
            backgroundColor: Colors.blueGrey,
                  ),
            label: const Text('Profile',
            style: TextStyle(
            fontSize: 20,
            ),
            ),
            icon: const Icon(Icons.newspaper),
          ),
          const SizedBox(height: 30,),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(110, 280),
              backgroundColor: Colors.blueGrey
                    ),
            label: const Text('Dashboard',
            style: TextStyle(
              fontSize: 20,
            ),
            ),
            icon: const Icon(Icons.home),
            ),
            const SizedBox(height: 30,),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(110, 280),
                backgroundColor: Color.fromARGB(255, 10, 190, 214)
                      ),
              label: const Text('Logout',
              style: TextStyle(
                fontSize: 20,
              ),
              ),
              icon: const Icon(Icons.logout),
              )
        ],
      ),
      );
  }
}
    