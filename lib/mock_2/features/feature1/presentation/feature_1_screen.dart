import 'package:app/mock_2/features/feature1/presentation/screen_1.dart';
import 'package:flutter/material.dart';

class Feature1Screen extends StatefulWidget {
  @override
  _Feature1ScreenState createState() => _Feature1ScreenState();
}

class _Feature1ScreenState extends State<Feature1Screen> {
  List<Widget> pages = [];

  @override
  void initState() {
    pages.add(Screen1(
      onBack: () => Navigator.of(context).pop(),
    ));
    super.initState();
  }

  void add(Widget page) {
    setState(() {
      pages.add(page);
    });
  }

  void remove([Widget page]) {
    setState(() {
      if (page != null) {
        pages.remove(page);
      } else {
        pages.removeLast();
      }
    });
  }

  void removeUntil() {
    setState(() {
      pages = [pages.first];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<Feature1NavNotification>(
        onNotification: (notification) {
          switch (notification.runtimeType) {
            case Feature1NavPush:
              final Widget page = (notification as Feature1NavPush).page;
              add(page);
              return true;
            case Feature1NavPop:
              remove();
              return true;
            case Feature1NavPopUntil:
              removeUntil();
              return true;
            default:
              throw 'Invalid Operation';
          }
        },
        child: Navigator(
          pages: pages.map((e) => MaterialPage(child: e)).toList(),
          onPopPage: (_, __) {
            remove();
            return true;
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class Feature1NavNotification extends Notification {
  Feature1NavNotification();
}

class Feature1NavPush extends Feature1NavNotification {
  Feature1NavPush({@required this.page});

  final Widget page;
}

class Feature1NavPop extends Feature1NavNotification {
  Feature1NavPop({this.result});

  final dynamic result;
}

class Feature1NavPopUntil extends Feature1NavNotification {
  Feature1NavPopUntil();
}

class CustomFeedNavigator {
  static void push(BuildContext context, {@required Widget page}) {
    Feature1NavPush(page: page).dispatch(context);
  }

  static void pop(BuildContext context, {dynamic result}) {
    Feature1NavPop(result: result).dispatch(context);
  }

  static void removeUntil(BuildContext context) {
    Feature1NavPopUntil().dispatch(context);
  }
}
