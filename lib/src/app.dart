import 'dart:convert';

import 'package:http/http.dart' show get;
import 'package:flutter/material.dart';

import 'models/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var counter = 0;

  List<ImageModel> images = [];

  void getImage() async {
    final response =
        await get('https://jsonplaceholder.typicode.com/photos/${++counter}');
    final imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      print('image url = ${imageModel.url}');
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Pics'),
        ),
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          onPressed: getImage,
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
