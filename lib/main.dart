import 'package:flutter/material.dart';
import 'package:star_rating/ui/widget/star_rating.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int rating = 0;
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Example of Rating Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StatefulBuilder(builder: (context, setState) {
                return StarRating(
                  size: 100,
                  onChanged: (index) {
                    setState(() {
                      rating = index;
                      print('Valor: $rating');
                      Scaffold.of(context).showSnackBar(SnackBar(
                          duration: Duration(milliseconds: 300),
                          content: Text('Valor: $rating')));
                    });
                  },
                  value: rating,
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
