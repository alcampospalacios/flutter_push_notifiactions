import 'package:flutter/material.dart';
import 'package:push_notifications/src/core/services/firebase-notifiaction-service.dart';
import 'package:push_notifications/src/routes/routes.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldMessengerState> messengerKey =
      new GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    super.initState();

    FirebaseNotificationService.notificationStream.listen((event) {
      navigatorKey.currentState?.pushNamed('message', arguments: event);

      final snackbar = SnackBar(content: Text(event));
      messengerKey.currentState?.showSnackBar(snackbar);
    });
  }

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
        navigatorKey: navigatorKey,
        scaffoldMessengerKey: messengerKey,
        routes: getApplicationRoutes());
  }
}
