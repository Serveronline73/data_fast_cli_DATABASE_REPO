// ignore_for_file: unused_import

import '../models/message.dart';
import 'database_repository.dart';
import '../models/chat.dart';

class MockDatabase implements DatabaseRepository {
  List<Message> messages = [];
  @override
  void deleteMessage(Message message) {
    messages.remove(message);
  }

  @override
  void sendMessage(String content, String timestamp) {
    Message message = Message(content, timestamp);
    messages.add(message);
  }

  @override
  List<Message> getAllMessages() {
    return messages;
  }

  @override
  void updateMessage(Message message, String newContent, String newTimestamp) {
    for (Message messageSearch in messages) {
      if (messageSearch == message) {
        message.content = newContent;
        message.timestamp = newTimestamp;
        break;
      }
    }
  }

  @override
  void newChat(List<Message> messages) {}

  @override
  void createChat(String message, String receiver) {}

  @override
  List<Chat> getAllChats() {
    // TODO: implement getAllChats
    throw UnimplementedError();
  }
}
