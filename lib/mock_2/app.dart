import 'package:app/mock_2/features/feature1/presentation/feature_1_screen.dart';
import 'package:app/mock_2/features/feature2/presentation/feature_2_screen.dart';
import 'package:app/mock_2/features/feed/presentation/feed_screen.dart';
import 'package:flutter/material.dart';

const String feature_1 = 'feature_1';
const String feature_2 = 'feature_2';

class App2 extends StatefulWidget {
  @override
  _App2State createState() => _App2State();
}

class _App2State extends State<App2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case feature_1:
            return MaterialPageRoute(
              settings: RouteSettings(name: feature_1),
              builder: (_) => Feature1Screen(),
            );
          case feature_2:
            return MaterialPageRoute(
              settings: RouteSettings(name: feature_2),
              builder: (_) => Feature2Screen(),
            );
          default:
            throw 'Invalid Operation';
        }
      },
      home: FeedScreen(),
    );
  }
}
