import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon3/models/users_api_from_json.dart';
import 'package:http/http.dart' as http;

class CroresPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Reytinglar",
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: _getUsersFromApi(),
        builder: (context, AsyncSnapshot<List<Users>> snap) {
          var data = snap.data;
          if (snap.hasData) {
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.purple[(Random().nextInt(8) + 1) * 100],
                    radius: 35.0,
                    child: Text(data[index].id.toString()),
                  ),
                  title: Text(data[data.length-index-1].name.toString()),
                  subtitle: Text(data[data.length-index-1].username.toString()),
                  trailing: Text("${data[data.length-index-1].id.toString()}0", style: TextStyle(color: Colors.black),),
                );
              },
            );
          } else {
            return Center(
              child: CupertinoActivityIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<List<Users>> _getUsersFromApi() async {
    var _response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if (_response.statusCode == 200) {
      return (json.decode(_response.body) as List)
          .map((e) => Users.fromJson(e))
          .toList();
    } else {
      throw Exception("ERROR");
    }
  }
}
