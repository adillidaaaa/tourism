import 'package:flutter/material.dart';

class Desert extends StatefulWidget {
  const Desert({super.key});

  @override
  State<Desert> createState() => _DesertState();
}

class _DesertState extends State<Desert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        title: Center(
            child: const Text(
          "DESERT",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        )),
        titleTextStyle: TextStyle(color: Color.fromARGB(255, 255, 248, 248)),
        backgroundColor: Color.fromARGB(255, 138, 110, 45),
      ),
      backgroundColor: Color.fromARGB(255, 242, 235, 139),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text("Sahara Desert"),
            subtitle: Text("tap to see image"),
            children: [
              Image.asset("images/Sand-dunes-in-the-Sahara-Desert-Morocco.jpg")
            ],
          ),
          ExpansionTile(
            title: Text("Arabian Desert"),
            subtitle: Text("tap to see image"),
            children: [Image.asset("images/Camel-in-liwa-desert-Arabia.jpg")],
          ),
          ExpansionTile(
            title: Text("Gobi Desert"),
            subtitle: Text("tap to see image"),
            children: [Image.asset("images/Canyon-Gobi-Desert-Mongolia.jpg")],
          ),
          ExpansionTile(
            title: Text("Kalahari Desert"),
            subtitle: Text("tap to see image"),
            children: [Image.asset("images/Kalahari-Desert-Desert-Namibi.jpg")],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.flight),
      ),
    );
  }
}
