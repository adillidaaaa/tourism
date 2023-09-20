import 'package:flutter/material.dart';

class Cities extends StatefulWidget {
  const Cities({super.key});

  @override
  State<Cities> createState() => _CitiesState();
}

class _CitiesState extends State<Cities> {
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
          "CITIES",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        )),
        titleTextStyle: TextStyle(color: Color.fromARGB(255, 255, 248, 248)),
        backgroundColor: Color.fromARGB(255, 48, 46, 47),
      ),
      backgroundColor: Color.fromARGB(255, 213, 187, 223),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text("Paris, France"),
            subtitle: Text("tap to see image"),
            children: [Image.asset("images/paris.jpg")],
          ),
          ExpansionTile(
            title: Text("New York City, USA"),
            subtitle: Text("tap to see image"),
            children: [
              Image.asset("images/world-most-visited-cities-new-york-city.jpg")
            ],
          ),
          ExpansionTile(
            title: Text(" London, England"),
            subtitle: Text("tap to see image"),
            children: [Image.asset("images/download.webp")],
          ),
          ExpansionTile(
            title: Text("Bangkok, Thailand"),
            subtitle: Text("tap to see image"),
            children: [Image.asset("images/Bangkok-cover_11th-Mar.webp")],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.flight),
      ),
    );
  }
}
