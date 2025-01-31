/// Utility class for validate, transforms
///
/// ### Usage
/// ```
/// final emailIsValid = ValidatorUtis.isValidEmail("juan@juan.com") // true
/// ```
///
abstract class ValidatorUtils {
  ///
  /// Verify if [email] is valid
  ///
  /// Return true or false
  static bool isValidEmail(String? email) {
    if (email == null) return false;
    final regex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    );
    return regex.hasMatch(email.toLowerCase());
  }
}

///
/// Utility class for validate input forms
///
/// ### Usage
/// ```
/// TextFormField(
///   ...
///   validator: FormValidatorUtils.validEmail,
/// ),
/// ```
abstract class FormValidatorUtils {
  ///
  /// Verify if [email] is email valid
  ///
  /// Return string (message ) or null
  static String? validEmail(String? email) {
    if (email == null) return 'Este campo es requerido';
    if (!ValidatorUtils.isValidEmail(email)) {
      return 'Este email no es valido';
    }
    return null;
  }

  ///
  /// Verify if [cad] is valid
  ///
  /// Return string (message) or null
  static String? validEmpty(String? cad) {
    if (cad == null || cad.isEmpty) return 'Este campo es requerido';
    return null;
  }
}
