import 'package:flutter/material.dart';
import 'package:moudule_flutter/constData.dart';

var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    final Route route;
    if (settings.arguments != null) {
      route = MaterialPageRoute(builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
    } else {
      route = MaterialPageRoute(builder: (context) => pageContentBuilder(context));
    }
    return route;
  }
  return null;
};
