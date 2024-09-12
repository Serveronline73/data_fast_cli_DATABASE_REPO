import '../models/chat.dart';
import '../models/message.dart';

abstract class DatabaseRepository {
  // Message
  void sendMessage(String content, String timestamp);
  void deleteMessage(Message message);
  void updateMessage(Message message, String newContent, String newTimestamp);
  List<Message> getAllMessages();

  // Hier kommt das ganze für Chat hin

  void newChat(List<Message> messages);
  void createChat(String message, String receiver);
  List<Chat> getAllChats();
}
