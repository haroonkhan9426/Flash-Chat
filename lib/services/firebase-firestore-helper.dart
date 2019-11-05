import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flash_chat/models/message.dart';

class FirestoreHelper {
  final firestore = Firestore.instance;
  final collectionName = 'messages';

  void saveMessage(Message message) async {
    firestore
        .collection(collectionName)
        .add({'sender': message.sender, 'text': message.text});
  }

  Stream<QuerySnapshot> getMessagesStream() {
    var snapShot = firestore.collection(collectionName)
        .snapshots();
    return snapShot;
  }
}
