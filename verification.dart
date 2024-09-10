import 'dart:math';

// Methode, um einen Verifizierungscode zu generieren
int generateVerificationCode() {
  Random random = Random();
  int code = random.nextInt(9000) + 1000;
  return code;
}
