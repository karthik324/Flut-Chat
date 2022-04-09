import 'package:flut_chat/api/app.dart';
import 'package:flut_chat/screens/screens.dart';
import 'package:flut_chat/screens/select_user_screen.dart';
import 'package:flut_chat/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

void main() {
  final client = StreamChatClient(apiKey);
  runApp(
    MyApp(
      client: client,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.client}) : super(key: key);
  final StreamChatClient client;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flut Chat',
      home: const SelectUserScreen(),
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
      builder: (context, child) {
        return StreamChat(
          client: client,
          child: ChannelsBloc(
            child: UsersBloc(
              child: child!,
            ),
          ),
        );
      },
    );
  }
}
