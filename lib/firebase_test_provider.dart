import 'package:flutter/material.dart';

import 'firebasetest_classs.dart';
import 'firebasetest_service.dart';

class FirebaseTestProvider with ChangeNotifier {
  List<Test> list = [];
  FirebaseTestService _firebaseTestService = FirebaseTestService();

  FirebaseTestProvider() {
    readDatas();
  }

  insertData(String value) {
    _firebaseTestService.insertData(value);
    readDatas();
  }

  readDatas() async {
    list = await _firebaseTestService.readDatas();
    notifyListeners();
  }

  updateData(int index) async {
    await _firebaseTestService.updateData(list[index]);
    readDatas();
  }

  deleteData(int index) async {
    await _firebaseTestService.deleteData(list[index].id);
    readDatas();
  }

  deleteAllDatas() async {
    list.forEach(
      (element) {
        _firebaseTestService.deleteData(element.id);
      },
    );
    readDatas();
  }
}
