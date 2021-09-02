import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;

  // to subscribe in main app level
  static StreamController<String> _notificationStreamController =
      new StreamController.broadcast();
  static Stream<String> get notificationStream =>
      _notificationStreamController.stream;

  static Future _onBackgroundHandler(RemoteMessage message) async {
    // print('onBackgroundHandler ${message.messageId}');
    _notificationStreamController.add(message.data['product'] ?? 'No title');
  }

  static Future _onMessageHandler(RemoteMessage message) async {
    // print('onMessageHandler ${message.messageId}');
    _notificationStreamController.add(message.data['product'] ?? 'No title');
  }

  static Future _onMessageOpenHandler(RemoteMessage message) async {
    // print('onMessageOpenHandler ${message.messageId}');
    _notificationStreamController.add(message.data['product'] ?? 'No title');
  }

  static Future initializeApp() async {
    // push notification initialize
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print('token: $token');

    // Handlers
    FirebaseMessaging.onBackgroundMessage(_onBackgroundHandler);
    FirebaseMessaging.onMessage.listen(_onMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenHandler);
  }

  static closeStream() {
    _notificationStreamController.close();
  }
}

// Variant: debugAndroidTest
// Config: debug
// Store: C:\Users\Alejandro\.android\debug.keystore
// Alias: AndroidDebugKey
// MD5: 29:BE:A2:F9:4B:0A:D3:67:5E:28:C1:7E:0B:A5:EC:20
// SHA1: 9F:E7:0D:30:82:69:A6:4C:E9:96:39:57:21:C9:F0:25:B4:15:8D:0D
// SHA-256: 4A:73:B6:C7:03:07:E6:E1:B5:77:44:59:1A:E7:C1:2C:58:F2:66:14:8C:B5:19:61:07:F7:8F:11:C7:1C:71:92
// Valid until: Friday, June 9, 2051
