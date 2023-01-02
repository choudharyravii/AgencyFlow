class Validator {
  static bool isValidEmail(String input) {
    final RegExp regex = RegExp(r"^[\w-.]+@([\w-]+.)+[\w-]{2,4}$");
    return regex.hasMatch(input);
  }

  static bool isValidPassword(String input) {
    final RegExp regex =
        RegExp(r"^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#$&*~]).{8,}$");
    return regex.hasMatch(input);
  }
}