import 'package:booking/core/utils/export_files.dart';
import 'package:easy_localization/easy_localization.dart';

String? thisFieldRequired(String? value) {
  if (value == null || value.isEmpty) {
    return LocaleKeys.error_fieldRequired.tr();
  }
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return LocaleKeys.error_emailInvalid.tr();
  }
  // Email regex pattern
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!emailRegex.hasMatch(value)) {
    return LocaleKeys.error_emailInvalid.tr();
  }
  return null;
}

String? validatePhoneNumber(String? value) {
  if (value == null || value.isEmpty) {
    return LocaleKeys.error_phoneInvalid.tr();
  }
  // // Egyptian phone number regex pattern
  // final phoneRegex = RegExp(r'^(01)[0-9]{9}$');
  // if (!phoneRegex.hasMatch(value)) {
  //   return "invalidPhoneNumberFormat";
  // }
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
    return LocaleKeys.error_passwordRequired.tr();
  }

  return null;
}

String? validateConfirmPassword(String? value, String password) {
  if (value == null || value.isEmpty) {
    return LocaleKeys.error_passwordRequired.tr();
  }
  if (value != password.trim()) {
    return LocaleKeys.error_passwordMismatch.tr();
  }
  return null;
}
