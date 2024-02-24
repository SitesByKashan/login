import 'dart:math';

String generatePassword(int length, bool includeNumbers, bool includeLetters,
    bool includeSpecialChars) {
  const String letters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String numbers = '0123456789';
  const String specialChars = '!@#\$%^&*()_-+=?/.,<>[]{}';

  String chars = '';
  if (includeNumbers) {
    chars += numbers;
  }
  if (includeLetters) {
    chars += letters;
  }
  if (includeSpecialChars) {
    chars += specialChars;
  }

  String password = '';
  final Random random = Random();
  for (int i = 0; i < length; i++) {
    int index = random.nextInt(chars.length);
    password += chars[index];
  }

  return password;
}
