import 'package:firebase_auth/firebase_auth.dart';

class FireBaseHelper {
  final _auth = FirebaseAuth.instance;

  Future<FirebaseUser> registerUser(String email, String password) async {
    try {
      print('email: $email, pass: $password');
      final authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (authResult != null) {
        return authResult.user;
      }else{
        return authResult.user;
      }
    } catch (e) {
      print('@registerUser: Exception: $e');
      return null;
    }
  }

  Future<FirebaseUser> login(String email, String password) async{
    try{
      final authResult = await _auth.signInWithEmailAndPassword(email: email, password: password);
      if(authResult != null){
        return authResult.user;
      }else{
        return null;
      }
    }catch(e){
      print(e);
      return null;
    }
  }
}
