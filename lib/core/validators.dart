class Validators {
  Validators._();
  static final RegExp _emailRegex =
      RegExp(r'^[\w.+-]+@([A-Za-z0-9-]+\.)+[A-Za-z]{2,}$');

  static String? email(String? value) {
    final text = value?.trim() ?? '';
    if (text.isEmpty) return 'Please enter your email';
    if (!_emailRegex.hasMatch(text)) {
      return 'Invalid email, use the format example@mail.domain';
    }
    return null;
  }
  static String? password(String? value) {
    final text = value ?? '';
    if (text.isEmpty) return 'Please enter your password';

    final hasUpper = text.contains(RegExp(r'[A-Z]'));
    final hasLower = text.contains(RegExp(r'[a-z]'));
    final hasNumber = text.contains(RegExp(r'[0-9]'));
    final hasSpecial = text.contains(RegExp(r'[^A-Za-z0-9]'));

    if (!(hasUpper && hasLower && hasNumber && hasSpecial)) {
      return 'Invalid password, it must contain uppercase, lowercase, '
          'numbers and special characters';
    }
    return null;
  }
}
