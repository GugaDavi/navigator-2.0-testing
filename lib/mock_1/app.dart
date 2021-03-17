import 'package:app/mock_1/home_screen.dart';
import 'package:app/mock_1/user_screen.dart';
import 'package:flutter/material.dart';

class App1 extends StatefulWidget {
  @override
  _App1State createState() => _App1State();
}

class _App1State extends State<App1> {
  String _selectedUser;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(
            child: HomeScreen(
              didSelectUser: (user) {
                setState(() => _selectedUser = user);
              },
            ),
          ),
          if (_selectedUser != null)
            MaterialPage(
              key: UserScreen.valueKey,
              child: UserScreen(_selectedUser),
            )
        ],
        onPopPage: (route, result) {
          final page = route.settings as MaterialPage;

          if (page.key == UserScreen.valueKey) _selectedUser = null;

          return route.didPop(result);
        },
      ),
    );
  }
}
