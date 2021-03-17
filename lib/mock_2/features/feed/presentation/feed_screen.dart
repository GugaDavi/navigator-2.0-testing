import 'package:app/mock_2/app.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator 2.0 - Teste II'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(feature_1);
            },
            child: Text('Go to the Feature 1'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(feature_2);
            },
            child: Text('Go to the Feature 2'),
          )
        ],
      ),
    );
  }
}
