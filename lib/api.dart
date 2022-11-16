import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import './quote.dart';
import 'package:http/http.dart' as http;


class incomeExpense with ChangeNotifier {
  incomeExpense(){
    fetchTasks();
  }
  List<Quote> _quotes = [];
  List<Quote> get quotes{
    return[..._quotes];
  }

  fetchTasks() async {
    final response = await http.get(
      Uri.parse('https://web-production-5de3.up.railway.app/expenses/?page=1'),
      // Send authorization headers to the backend.
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY4NjI3ODgxLCJpYXQiOjE2Njg2Mjc1ODEsImp0aSI6IjBmZGY0ZjBhYzg2NjQ4ZGJiYjUwM2FmNWY2OTMyYjBiIiwidXNlcl9pZCI6Mn0.wJG8syjAJn7Hg32WXKDFSkaR3tLHeDWqV-SWt7vurZI',
        },

    );
    print(response);
    print('OK');
    if(response.statusCode == 200){
      print(response);
      var data = json.decode(response.body) as List;
      print(data);
      _quotes=data.map<Quote>((json)=>Quote.fromJson(json)).toList();
      print(_quotes);
    }
    else if(response.statusCode == 404){
      // not found
      print('not found');
    } else if(response.statusCode == 500){
      // server not responding.
      print('server not responding');
    } else {
      // some other error or might be CORS policy error. you can add your url in CORS policy.
      print('some other error');
    }
  }
}