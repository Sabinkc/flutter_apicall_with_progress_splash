import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    fetchData();
  }

    Future fetchData() async {
    var url = "https://jsonplaceholder.typicode.com/users";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List fetcheddata = jsonDecode(response.body);
      // data must be updated within setstate because it is async function so the homescreen could be built already while it is waiting for the api data and won't get notified about the state change and the state remains the same without rebuilding
      // so setstate will rebuild the state after data is fetched to data list
      setState(() {
        data = fetcheddata;
      });
    } else {
      throw Exception("Cannot load data");
    }
  }

  List data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Splash API"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: ((context, index) => ListTile(
                  title: Text(data[index]["username"]),
                  subtitle: Text(data[index]["id"].toString()),
                ))));
  }
}

