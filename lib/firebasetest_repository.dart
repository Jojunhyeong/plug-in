import 'package:cloud_firestore/cloud_firestore.dart';

import 'firebasetest_classs.dart';

class FirebaseTestRepository {
  CollectionReference _db = FirebaseFirestore.instance.collection("Josh");

  insertData(Test test) async {
    await _db.add(test.toMap());
  }

  readDatas() async {
    return await _db.get();
  }

  updateData(Test test) async {
    await _db.doc(test.id).update(test.toMap());
  }

  deleteData(String id) async {
    await _db.doc(id).delete();
  }
}
