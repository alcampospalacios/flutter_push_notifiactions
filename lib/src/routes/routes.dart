import 'package:flutter/material.dart';
import 'package:push_notifications/src/screens/home-screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'home': (_) => HomeScreen(),
  };
}
