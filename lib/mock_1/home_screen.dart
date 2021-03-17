import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({this.didSelectUser});

  final ValueChanged didSelectUser;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> users = [
    'Amanda',
    'Gustavo',
    'Felipe',
    'Alef',
    'Lívia',
    'Alexandre'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator 2.0 - Teste I'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: users.length,
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () {
                widget.didSelectUser(users[i]);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                decoration: BoxDecoration(
                    border: Border.all(width: 0.3),
                    borderRadius: BorderRadius.circular(4)),
                child: Text(users[i]),
              ),
            );
          },
          separatorBuilder: (context, i) {
            return SizedBox(
              height: 16,
            );
          },
        ),
      ),
    );
  }
}
