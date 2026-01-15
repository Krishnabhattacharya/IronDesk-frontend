double calculatePasswordStrength(String password) {
  // Length of the password
  final int length = password.length;

  // Check for presence of lowercase letters
  final bool hasLowerCase = password.contains(RegExp('[a-z]'));

  // Check for presence of digits
  final bool hasDigits = password.contains(RegExp('[0-9]'));

  // Check for presence of special characters
  final bool hasSpecialCharacters = password.contains(RegExp(r'[!@#$%^&*~()_+\-=\[\]{};:\,.<>?/|\\]'));

  int strengthFactors = 0;
  if (length >= 8) {
    strengthFactors += 1;
  }
  if (hasLowerCase) {
    strengthFactors += 1;
  }
  if (hasDigits) {
    strengthFactors += 1;
  }
  if (hasSpecialCharacters) {
    strengthFactors += 1;
  }
  final double strength = strengthFactors / 4.0;
  // log("Password Strength : $strength");
  return strength;
}
