import '../models/chat.dart';
import '../models/message.dart';

abstract class DatabaseRepository {
  // Message

  // Sende Nachrichten
  void sendMessage(Message message);

  // Löschen einer Nachricht
  void deleteMessage(Message message);

  // Update einer Nachricht
  void updateMessage(Message message, String newContent, String newTimeStamp);

  // Übersicht aller Nachrichten
  List<Message> getAllMessages();

  // Hier kommt das ganze für Chat hin

  void newGroupChat(List<Message> messages);

  // Neue chat erstellen
  void createChat(Message message, String receiver);

  // Übersicht aller chats
  List<Chat> getAllChats();
}
