class AppRegex {
  static bool isEmailValid(String email) {
    return RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return RegExp(
            r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$")
        .hasMatch(password);
  }

static Map<String, bool> passwordValidation(String password) {
    final validations = {
      'hasMinLength': password.length >= 8,
      'hasLowerCase': RegExp(r'[a-z]').hasMatch(password),
      'hasUpperCase': RegExp(r'[A-Z]').hasMatch(password),
      'hasDigit': RegExp(r'\d').hasMatch(password),
      'hasSpecialCharacter': RegExp(r'[@$!%*?&]').hasMatch(password),
    };

    validations.removeWhere((key, value) => value == true);

    return validations; 
  }
  static bool isPhoneNumberValid(String phoneNumber) {
    return RegExp(r'^(010|011|012|015)[0-9]{8}$').hasMatch(phoneNumber);
  }

  static bool hasLowerCase(String password) {
    return RegExp('^(?=.*[a-z])').hasMatch(password);
  }

  static bool hasUpperCase(String password) {
    return RegExp('^(?=.*[A-Z])').hasMatch(password);
  }

  static bool hasNumber(String password) {
    return RegExp('^(?=.*?[0-9])').hasMatch(password);
  }

  static bool hasSpecialCharacter(String password) {
    return RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(password);
  }

  static bool hasMinLength(String password) {
    return RegExp('^(?=.{8,})').hasMatch(password);
  }

  static bool isNameValid(String name) {
    return RegExp(r'^[a-zA-Z\u0621-\u064A\s,.\-]+$').hasMatch(name);
  }
}
