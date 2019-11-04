import 'package:firebase_auth/firebase_auth.dart';

class FireBaseHelper {
  final _auth = FirebaseAuth.instance;

  Future registerUser(String email, String password) async {
    try {
      print('email: $email, pass: $password');
      final authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (authResult != null) {
        return true;
      }
    } catch (e) {
      print('@registerUser: Exception: $e');
      return false;
    }
  }

  bool authUser(String email, String password) {
    return false;
  }
}
