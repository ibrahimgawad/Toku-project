import 'package:flutter/material.dart';

class BusniessCardApp extends StatelessWidget {
  const BusniessCardApp() : super();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff2B475D),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 122,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage("images/tharwat.jpg"),
            ),
          ),
          const Text(
            "Tharwat Samy",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: "Pacifico",
            ),
          ),
          const Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(fontSize: 16, color: const Color(0xff6c8090)),
          ),
          const Divider(
            color: Color(0xff6c8090),
            indent: 40,
            endIndent: 40,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const ListTile(
              contentPadding: EdgeInsets.all(8),
              leading: Icon(
                Icons.phone,
                size: 34,
                color: Color(0xff2B475D),
              ),
              title: Text(
                "(+20) 1276151881",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: const ListTile(
              contentPadding: EdgeInsets.all(8),
              leading: Icon(
                Icons.mail,
                size: 34,
                color: Color(0xff2B475D),
              ),
              title: Text(
                "ibrahimgawad465@gmail.com",
                style: TextStyle(fontSize: 18),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
