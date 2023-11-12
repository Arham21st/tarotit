import 'package:flutter/material.dart';

Future pushNavigator(context,
    {required String routeName, required Widget widget}) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      fullscreenDialog: true,
      settings: RouteSettings(name: routeName),
      builder: (BuildContext context) => widget,
    ),
  );
}

Future pushScreen(context, Widget screen) {
  return Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (BuildContext context) => screen,
    ),
  );
}

void popNavigator(context) {
  return Navigator.of(context).pop();
}

Future replaceWithNamedNavigator(context, {required String routeName}) {
  return Navigator.of(context).pushReplacementNamed(routeName);
}