import 'firebasetest_classs.dart';
import 'firebasetest_repository.dart';

class FirebaseTestService {
  FirebaseTestRepository _firebaseTestRepository = FirebaseTestRepository();

  insertData(String memo) {
    _firebaseTestRepository.insertData(Test(memo: "Hey Josh"));
  }

  Future<List<Test>> readDatas() async {
    List<Test> testList = [];
    await _firebaseTestRepository.readDatas().then((value) => value.docs).then(
          (value) => value.forEach(
            (element) => testList.add(
              Test.fromMap(element.data(), element.id),
            ),
          ),
        );
    return testList;
  }

  updateData(Test test) async {
    _firebaseTestRepository.updateData(test);
  }

  deleteData(String id) async {
    _firebaseTestRepository.deleteData(id);
  }
}
