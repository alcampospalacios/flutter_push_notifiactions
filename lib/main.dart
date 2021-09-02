import 'package:flutter/material.dart';
import 'package:push_notifications/src/app.dart';
import 'package:push_notifications/src/core/services/firebase-notifiaction-service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseNotificationService.initializeApp();
  runApp(MyApp());
}
