import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:friendly_chat/chat_screen.dart';

void main() => runApp(const FriendlyChatApp());
String name = 'Saeed Head Man';

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
      title: 'FriendlyChat',
      home: const ChatScreen(),
    );
  }
}

final ThemeData kIOSTheme = ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
      .copyWith(secondary: Colors.orangeAccent[400]),
);
