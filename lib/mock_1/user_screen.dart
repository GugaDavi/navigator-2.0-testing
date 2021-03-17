import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  UserScreen(this.user);

  final String user;
  static const ValueKey valueKey = ValueKey<String>('user_screen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User: $user'),
      ),
      body: Center(
        child: user == 'Felipe' ? Text('E ai cachorro!') : Text('Olá $user'),
      ),
    );
  }
}
