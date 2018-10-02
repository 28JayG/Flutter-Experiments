import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:local_json/src/custom-list-tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON APP'),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future:
            DefaultAssetBundle.of(context).loadString('assets/person.json'),
            builder: (context, snapshot) {
              //DecodeText(data),

              List _data = jsonDecode(snapshot.data.toString());

              return ListView.builder
                (
                  itemCount: _data.length,
                  itemBuilder: (_, index) =>
                      CustomListTile(
                        height: _data[index]['height'],
                        age: _data[index]['age'],
                        name: _data[index]['name'],
                        hairColor: _data[index]['hair_color'],
                        imageUrl: _data[index]['image'],
                      )
              );
            },
          ),
        ),
      ),
    );
  }


}
