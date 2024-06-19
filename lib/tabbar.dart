import 'package:flutter/material.dart';
import 'package:untitled25/pages/p1.dart';
import 'package:untitled25/pages/p2.dart';
import 'package:untitled25/pages/p3.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.orange),
    debugShowCheckedModeBanner: false,
    home: cat(),
  ));
}

int num = 0;
List iccon = [Icons.search, Icons.add_business, Icons.home];

class cat extends StatefulWidget {
  const cat({super.key});

  @override
  State<cat> createState() => _catState();
}

class _catState extends State<cat> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(iccon[num]),
          ),
          appBar: AppBar(
              title: Text("heloo"),
              bottom: TabBar(
                onTap: (hat){
                  setState(() {
                    num = hat;
                  });
                },
                  tabs: [
                Tab(
                  child: Text("helooo"),
                  icon: Icon(Icons.add),
                ),
                Tab(
                  child: Text("haii"),
                  icon: Icon(Icons.add_business),
                ),
                Tab(
                  child: Text("king"),
                  icon: Icon(Icons.ac_unit_outlined),
                ),
              ])),
          body: TabBarView(
            children: [
              p1(),
              p2(),
              p3(),
            ],
          ),
        ));
  }
}
