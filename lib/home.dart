import 'package:flutter/material.dart';
import 'package:tourism/beach.dart';
import 'package:tourism/cities.dart';
import 'package:tourism/desert.dart';
import 'package:tourism/hills.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8))),
        title: Center(
            child: const Text(
          "TOURISM !",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
        )),
        titleTextStyle: TextStyle(color: Color.fromARGB(255, 255, 248, 248)),
        backgroundColor: Color.fromARGB(255, 71, 110, 76),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("Profile")),
                PopupMenuItem(
                  child: Text("Add Location"),
                )
              ];
            },
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 168, 208, 238),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 45,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage("images/download (1).jpg"),
                    fit: BoxFit.cover),
                color: Color.fromARGB(255, 180, 226, 218)),
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Search Place",
                    icon: Icon(Icons.search),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 650,
            width: 100,
            color: Colors.black12,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/beach.jpg"),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 10,
                          child: Opacity(
                            opacity: 0.4,
                            child: Text(
                              "BEACH",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 95,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 10,
                            bottom: 10,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Beach(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "see more ",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 143, 235, 244),
                                      fontWeight: FontWeight.bold),
                                ))),
                      ],
                    )),
                Container(
                  height: 150,
                  width: 10,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/hills.jpg"),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 10,
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            "HILLS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 95,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 10,
                          bottom: 10,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Hills(),
                                  ),
                                );
                              },
                              child: Container(
                                child: Text(
                                  "see more",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 143, 235, 244),
                                      fontWeight: FontWeight.bold),
                                ),
                              ))),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: 10,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/cities.jpg"),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 10,
                        child: Opacity(
                          opacity: 0.6,
                          child: Text(
                            "CITIES",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 95,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 10,
                          bottom: 10,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Cities(),
                                  ),
                                );
                              },
                              child: Text(
                                "see more",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 143, 235, 244),
                                    fontWeight: FontWeight.bold),
                              ))),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: 10,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/desert.jpg"),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 10,
                        child: Opacity(
                          opacity: 0.6,
                          child: Text(
                            "DESERT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 95,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 10,
                          bottom: 10,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Desert(),
                                  ),
                                );
                              },
                              child: Text(
                                "see more",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 57, 96, 99),
                                    fontWeight: FontWeight.bold),
                              ))),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_location_rounded),
      ),
    );
  }
}
