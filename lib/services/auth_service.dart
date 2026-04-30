class AuthService {
  static String? currentUser;

  static Future<bool> login(String email, String password) async {
    // TODO: implement real auth
    if (email.isEmpty || password.isEmpty) {
      return false;
    }
    currentUser = email;
    return true;
  }

  static void logout() {
    currentUser = null;
  }
}
