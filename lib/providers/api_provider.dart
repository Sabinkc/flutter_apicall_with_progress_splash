import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class ApiProvider extends ChangeNotifier{
  List data = [];

  Future fetchData() async {
    var url = "https://jsonplaceholder.typicode.com/users";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List fetcheddata = jsonDecode(response.body);
      data = fetcheddata;
      
    } else {
      throw Exception("Cannot load data");
    }
    notifyListeners();
    
  }

 


}