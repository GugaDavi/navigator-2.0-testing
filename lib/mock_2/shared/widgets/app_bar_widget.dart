import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({this.onBack, this.title = ''});

  final Function onBack;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          if (onBack != null) {
            onBack();
          }
        },
      ),
    );
  }
}
