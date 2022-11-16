import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  QuoteCard({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                  quote.text,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold,
                  )
              ),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                    quote.author,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    )
                ),
              ),
              SizedBox(height: 6.5),
              TextButton.icon(
                  onPressed: delete,
                  label: Text('Delete this quote'),
                  icon: Icon(Icons.delete),
              ),
            ],
          ),
        ),
    );
  }
}

// body: Column(
// children: quotes.map((quote) => Text('${quote.text}-${quote.author}')).toList(),
// )