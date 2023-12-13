class Validator {
  static String? validateUsername({required String? username}) {
    if (username == null) {
      return null;
    }

    if (username.isEmpty) {
      return 'Username can\'t be empty';
    }

    return null;
  }

  static String? validateEmail({required String? email}) {
    if (email == null) {
      return null;
    }

    RegExp emailRegExp = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    if (email.isEmpty) {
      return 'Email can\'t be empty';
    } else if (!emailRegExp.hasMatch(email)) {
      return 'Enter a correct email';
    }

    return null;
  }

  static String? validatePassword({required String? password}) {
    if (password == null) {
      return null;
    }

    if (password.isEmpty) {
      return 'Password can\'t be empty';
    } else if (password.length < 8) {
      return 'Enter a password with length at least 8';
    } else if (!_isPasswordValid(password)) {
      return 'Password must contain at least one special character';
    }

    return null;
  }

  static bool _isPasswordValid(String password) {
    RegExp passwordRegExp = RegExp(r'^(?=.*[!@#$%^&*(),.?":{}|<>]).*$');
    return passwordRegExp.hasMatch(password);
  }

  static String? validatePhone({required String? phone}) {
    if (phone == null) {
      return null;
    }

    if (phone.isEmpty) {
      return 'Phone Number can\'t be empty';
    }
    return null;
  }
}
