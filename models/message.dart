import 'dart:io';

class Message {
  String content;
  String timestamp;

  Message(this.content, this.timestamp);

  void readMessage() {
    print("Nachrichten:");
    print("Keine neuen Nachrichten.");
  }

  void sendMessage() {
    print("Nachricht senden:");
    print("Bitte geben Sie den Empfänger ein:");
    String empfaenger = stdin.readLineSync()!;
    print("$empfaenger Bitte geben Sie die Nachricht ein:");
    String nachricht = stdin.readLineSync()!;
    print("$nachricht Nachricht gesendet!");
  }

  void translateMessage() {
    print("Nachricht übersetzen:");
    print("Bitte geben Sie die Nachricht ein:");
    String nachricht = stdin.readLineSync()!;
    print("Bitte wählen Sie die Zielsprache:");
    print("1. Englisch");
    print("2. Französisch");
    print("3. Spanisch");
    String option = stdin.readLineSync()!;
  }
}
