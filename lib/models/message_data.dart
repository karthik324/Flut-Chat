

class MessageData {
  MessageData(
      {required this.dateMessage,
      required this.message,
      required this.messageDate,
      required this.profilePicture,
      required this.senderName});

  final String senderName;
  final String message;
  final DateTime messageDate;
  final String dateMessage;
  final String profilePicture;
}
