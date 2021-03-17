import 'package:app/mock_2/features/feature1/presentation/feature_1_screen.dart';
import 'package:app/mock_2/features/feature1/presentation/screen_3.dart';
import 'package:app/mock_2/shared/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarWidget(
            onBack: () {
              CustomFeedNavigator.pop(context);
            },
            title: 'Screen2',
          ),
          Expanded(
            child: TextButton(
              child: Text('Proximo passo'),
              onPressed: () {
                CustomFeedNavigator.push(context, page: Screen3());
              },
            ),
          )
        ],
      ),
    );
  }
}
