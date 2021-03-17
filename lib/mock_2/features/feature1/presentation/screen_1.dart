import 'package:app/mock_2/features/feature1/presentation/feature_1_screen.dart';
import 'package:app/mock_2/features/feature1/presentation/screen_2.dart';
import 'package:app/mock_2/shared/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Screen1({this.onBack});

  final Function onBack;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarWidget(
            onBack: onBack,
            title: 'Screen1',
          ),
          Expanded(
            child: TextButton(
              child: Text('Proximo passo'),
              onPressed: () {
                CustomFeedNavigator.push(context, page: Screen2());
              },
            ),
          )
        ],
      ),
    );
  }
}
