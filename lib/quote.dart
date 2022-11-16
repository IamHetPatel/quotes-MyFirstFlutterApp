import 'dart:ffi';

class Quote{
  int count;
  String next;
  String prev;
  var results = (5)
  // int id;
  // String text;
  // String author;
  // String amount;
  // String category;

  Quote({required this.count,required this.next,required this.prev, required this.results});
  factory Quote.fromJson(Map<String,dynamic> json){
    return Quote(
      count: json['count'],
      next: json['next'],
      prev: json['prev'],
      results: json['results']
    );
  }
  // Quote({ required this.id,required this.text, required this.author, required this.amount, required this.category });
  //
  // factory Quote.fromJson(Map<String,dynamic> json){
  //   return Quote(
  //     text: json['date'],
  //     author: json['description'],
  //     amount: json['amount'],
  //       category: json['category']
  //   );
  // }
}