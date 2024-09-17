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
  void sendMessage(Message message) {
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
  void newGroupChat(List<Message> messages) {}

  @override
  void createChat(Message message, String receiver) {}

  @override
  List<Chat> getAllChats() {
    // TODO: implement getAllChats
    throw UnimplementedError();
  }
}
