import 'package:flutter/material.dart';

class Hills extends StatefulWidget {
  const Hills({super.key});

  @override
  State<Hills> createState() => _HillsState();
}

class _HillsState extends State<Hills> {
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
          "HILLS",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        )),
        titleTextStyle: TextStyle(color: Color.fromARGB(255, 255, 248, 248)),
        backgroundColor: Color.fromARGB(255, 73, 133, 88),
      ),
      backgroundColor: Color.fromARGB(255, 139, 242, 146),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text("Cypress Hills, Canada"),
            subtitle: Text("tap to see image"),
            children: [Image.asset("images/cypress-hills.jpg")],
          ),
          ExpansionTile(
            title: Text("Ooty, India:"),
            subtitle: Text("tap to see image"),
            children: [Image.asset("images/ooty-hills.jpg")],
          ),
          ExpansionTile(
            title: Text("Manali, India:"),
            subtitle: Text("tap to see image"),
            children: [Image.asset("images/MANALI.jpg")],
          ),
          ExpansionTile(
            title: Text("Thredbo, Australia:"),
            subtitle: Text("tap to see image"),
            children: [Image.asset("images/thredbo-australia.jpg")],
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
