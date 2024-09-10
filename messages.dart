import 'dart:io';

void nachrichtenLesen() {
  print("Nachrichten:");
  print("Keine neuen Nachrichten.");
}

void nachrichtenSenden() {
  print("Nachricht senden:");
  print("Bitte geben Sie den Empfänger ein:");
  String empfaenger = stdin.readLineSync()!;
  print("Bitte geben Sie die Nachricht ein:");
  String nachricht = stdin.readLineSync()!;
  print("Nachricht gesendet!");
}

void nachrichtenUebersetzen() {
  print("Nachricht übersetzen:");
  print("Bitte geben Sie die Nachricht ein:");
  String nachricht = stdin.readLineSync()!;
  print("Bitte wählen Sie die Zielsprache:");
  print("1. Englisch");
  print("2. Französisch");
  print("3. Spanisch");
  String option = stdin.readLineSync()!;
}
