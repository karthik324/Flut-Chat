import 'dart:math';

import 'package:stream_chat_flutter/stream_chat_flutter.dart';

abstract class Helpers {
  static final random = Random();

  static String randomPictueUrl() {
    final randomInt = random.nextInt(1000);
    return 'https://source.unsplash.com/$randomInt/800x800/?img=1';
  }

  static DateTime randomDate() {
    final random = Random();
    final currentDate = DateTime.now();
    return currentDate.subtract(Duration(seconds: random.nextInt(200000)));
  }

  static String? getChannelImage(Channel channel, User currentUser) {
    if (channel.image != null) {
      return channel.image!;
    } else if (channel.state?.members.isNotEmpty ?? false) {
      final otherMembers = channel.state?.members
          .where(
            (element) => element.userId != currentUser.id,
          )
          .toList();

      if (otherMembers?.length == 1) {
        return otherMembers!.first.user?.image;
      }
    } else {
      return null;
    }
  }
    static String getChannelName(Channel channel, User currentUser) {
    if (channel.name != null) {
      return channel.name!;
    } else if (channel.state?.members.isNotEmpty ?? false) {
      final otherMembers = channel.state?.members
          .where(
            (element) => element.userId != currentUser.id,
          )
          .toList();

      if (otherMembers?.length == 1) {
        return otherMembers!.first.user?.name ?? 'No name';
      } else {
        return 'Multiple users';
      }
    } else {
      return 'No Channel Name';
    }
  }
}


