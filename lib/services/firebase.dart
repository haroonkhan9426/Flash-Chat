import 'package:firebase_auth/firebase_auth.dart';
class FireBaseHelper{
  final _auth = FirebaseAuth.instance;

  void registerUser(String email, String password) async{
    try{
      final authResult = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password
      ) ;
    }catch(e){
      print(e);
    }
  }

  bool authUser(String email, String password){
    return false;
  }


}