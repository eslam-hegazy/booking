
String? thisFieldRequired(String? value) {
  if (value == null || value.isEmpty) {
    return "thisFieldIsRequired";
  }
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return "thisFieldIsRequired";
  }
  // Email regex pattern
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!emailRegex.hasMatch(value)) {
    return "pleaseEnterAValidEmailAddress";
  }
  return null;
}

String? validateEgyptianPhoneNumber(String? value) {
  if (value == null || value.isEmpty) {
    return "thisFieldIsRequired";
  }
  // Egyptian phone number regex pattern
  final phoneRegex = RegExp(r'^(01)[0-9]{9}$');
  if (!phoneRegex.hasMatch(value)) {
    return "invalidPhoneNumberFormat";
  }
  return null;
}

String? validateNationalId(String? value) {
  if (value == null || value.isEmpty) {
    return "thisFieldIsRequired";
  }
  if (value.length != 14) {
    return "nationalIDMustBeDigits";
  }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return "thisFieldIsRequired";
  }
  if (value.length < 6) {
    return "passwordMustBeAtLeastCharacters";
  }
  return null;
}

String? validateConfirmPassword(String? value, String password) {
  if (value == null || value.isEmpty) {
    return "pleaseConfirmYourPassword";
  }
  if (value != password.trim()) {
    return "passwordsDoNotMatch";
  }
  return null;
}
