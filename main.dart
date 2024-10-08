import 'dart:io';

import '../old_stuff/messages.dart';
import '../old_stuff/user_profile.dart';
import '../old_stuff/verification.dart';
import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'models/message.dart';

void main() {
  DatabaseRepository repository = MockDatabase();
  while (true) {
    print("Eingabe Handy Rufnummer:");

    // Lies die Handy-Rufnummer vom Benutzer ein
    int mobileNumber = int.parse(stdin.readLineSync()!);

    // Generiere einen Verifizierungscode
    int verificationCode = generateVerificationCode();
    print("Verification Code wird per SMS gesendet!");
    print("");
    print("Ihr Verification Code ist: $verificationCode");
    print("Eingabe Verification Code:");

    // Lies den Verifizierungscode vom Benutzer ein
    int code = int.parse(stdin.readLineSync()!);

    // Überprüfe, ob der eingegebene Code korrekt ist
    if (code == verificationCode) {
      print("Verification Erfolgreich");
      print("");

      // Wenn der Code korrekt ist, rufe die Anmeldemethode auf
      anmeldung();
      break;
    } else {
      print("Falscher Verification Code, Bitte erneut Eingeben");
    }
  }
}

void anmeldung() {
  print("Willkommen bei GlobeTransMessage");
  DatabaseRepository repository = MockDatabase();
  while (true) {
    print("Bitte wählen Sie eine Option:");
    print("");
    print("1. Benutzerprofil anzeigen");
    print("2. Nachrichten lesen");
    print("3. Nachrichten senden");
    print("4. Nachrichten übersetzen");
    print("5. Abmelden");

    int option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
        user_profile();

      case 2:
        List<Message> messages = repository.getAllMessages();
        for (Message message in messages) {
          print("New Message: ${message.content}, am ${message.timestamp}");
        }

      case 3:
        // String empfaenger = stdin.readLineSync()!;
        print("Bitte gib eine Nachricht ein:");
        String nachricht = stdin.readLineSync()!;
        repository.sendMessage(nachricht, "${DateTime.now()}");

      case 4:
        translateMessage();

      case 5:
        abmelden();

      default:
        print("Ungültige Option. Bitte wählen Sie eine gültige Option.");
    }
  }
}

void abmelden() {
  print("Abmeldung erfolgreich");
  exit(0);
}
