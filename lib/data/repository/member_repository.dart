import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MemberRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('Josh');

  weight() {
    users.add({
      "weight": 70,
    });
  }

  signUp({required String email, required String password}) async {
    await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  signIn({required String email, required String password}) async {
    return await _auth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  logOut() async {
    await _auth.signOut();
  }

  mmmemo(String email, String password, String weight) {
    print(email);
    print(password);
    print(weight);
    users.add({
      "email": email,
      "password": password,
      "weight": weight,
    });
  }
}
