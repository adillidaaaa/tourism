import 'package:flutter/material.dart';

class Beach extends StatefulWidget {
  const Beach({super.key});

  @override
  State<Beach> createState() => _BeachState();
}

class _BeachState extends State<Beach> {
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
          "BEACHES",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        )),
        titleTextStyle: TextStyle(color: Color.fromARGB(255, 255, 248, 248)),
        backgroundColor: Color.fromARGB(255, 73, 131, 133),
      ),
      backgroundColor: Color.fromARGB(255, 139, 225, 242),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text("Santa Monica Beach, California"),
            subtitle: Text("tap to see image"),
            children: [
              Image.asset("images/02-santa-monica-shutterstock_191312978.webp")
            ],
          ),
          ExpansionTile(
            title: Text("South Beach, Miami, Florida"),
            subtitle: Text("tap to see image"),
            children: [
              Image.asset("images/03-south-beach-shutterstock_449408050.webp")
            ],
          ),
          ExpansionTile(
            title: Text("Renaissance Island, Aruba"),
            subtitle: Text("tap to see image"),
            children: [
              Image.asset("images/04-aruba-shutterstock_570470086.webp")
            ],
          ),
          ExpansionTile(
            title: Text("Waikiki, Honolulu, Hawaii"),
            subtitle: Text("tap to see image"),
            children: [
              Image.asset("images/05-waikiki-shutterstock_750773470.webp")
            ],
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
