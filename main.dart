import 'dart:io';

import 'verification.dart';
import 'user_profile.dart';
import 'messages.dart';

void main() {
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
        benutzerProfilAnzeigen();
        break;
      case 2:
        nachrichtenLesen();
        break;
      case 3:
        nachrichtenSenden();
        break;
      case 4:
        nachrichtenUebersetzen();
        break;
      case 5:
        abmelden();
        break;
      default:
        print("Ungültige Option. Bitte wählen Sie eine gültige Option.");
    }
  }
}

void abmelden() {
  print("Abmeldung erfolgreich");
  exit(0);
}
