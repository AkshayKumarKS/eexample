import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: AK(),
  ));
}

String? data = "";
class AK extends StatefulWidget {
  const AK({super.key});

  @override
  State<AK> createState() => _AKState();
}

class _AKState extends State<AK> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data!),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(30),
            elevation: 10,
            shadowColor: Colors.purple,
            color: Colors.cyanAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(data!),
                  Text(data!),
                  Text(data!),
                  Text(data!),
                  Text(data!),
                ],
              ),
            ),
          ),
          Container(
            child: TextFormField(
              onChanged: (king){
                setState(() {
                  data =king;
                });
              },
              decoration: InputDecoration(
                labelText: 'type',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
