import 'package:flutter/material.dart';
import 'package:push_notifications/src/routes/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notificaciones push',
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.indigo,
            appBarTheme: AppBarTheme(color: Colors.indigo),
            floatingActionButtonTheme:
                FloatingActionButtonThemeData(backgroundColor: Colors.indigo)),
        initialRoute: 'home',
        routes: getApplicationRoutes());
  }
}
