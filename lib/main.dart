import 'dart:io';
import 'package:flutter/material.dart';
import 'package:quotes/api.dart';
import 'quote.dart';
import 'quote_card.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=> incomeExpense(),
    child: const MaterialApp(
      home: Homepage( ),
    ),
  ));
}
// class QuoteList extends StatefulWidget {
//   @override
//   _QuoteListState createState() => _QuoteListState();
// }
//
// class _QuoteListState extends State<QuoteList> {
//   List<Quote> quotes = [
//     Quote(author: 'Oscar Wilde',text: 'This is the quote'),
//     Quote(author: 'Oscar Wilde',text: 'This is the quote'),
//     Quote(author: 'Oscar Wilde',text: 'This is the quote'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         title: const Text('Awesome Quotes'),
//         centerTitle: true,
//         backgroundColor: Colors.redAccent,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: quotes.map((quote) => QuoteCard(
//             quote: quote,
//             delete: (){
//               setState((){
//                 quotes.remove(quote);
//               });
//           }
//         )).toList(),
//       )
//     );
//   }
// }
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final quoteP = Provider.of<incomeExpense>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('login details'),
      ),
      body: ListView.builder(
        itemCount: quoteP.quotes.length,
        itemBuilder:(BuildContext context, int index){
          return ListTile(
            title: Text(quoteP.quotes[index].next),
            subtitle: Text(quoteP.quotes[index].prev),
          );
    }
    ));
  }
}


