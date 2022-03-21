import 'package:flutter/material.dart';
import 'package:plug_in/firebase_test_provider.dart';
import 'package:provider/provider.dart';

import 'component/plug_in_container.dart';

class firebasetest_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FirebaseTestProvider>(
      builder: (context, firebaseTestProvider, child) => SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      firebaseTestProvider.insertData("도훈");
                    },
                    child: PlugInContainer(
                      width: 100.0,
                      height: 40.0,
                      color: Colors.amber,
                      child: Center(
                        child: Text("Firebase에 데이터 추가하기"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      firebaseTestProvider.readDatas();
                    },
                    child: PlugInContainer(
                      width: 100.0,
                      height: 40.0,
                      color: Colors.amber,
                      child: Center(
                        child: Text("Firebase 데이터 읽기"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      firebaseTestProvider.deleteAllDatas();
                    },
                    child: PlugInContainer(
                      width: 100.0,
                      height: 40.0,
                      color: Colors.amber,
                      child: Center(
                        child: Text("Firebase 데이터 모두 삭제"),
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                fit: FlexFit.tight,
                child: ListView.builder(
                  itemCount: firebaseTestProvider.list.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: Icon(Icons.pending_actions),
                    title: Text(firebaseTestProvider.list[index].memo),
                    subtitle: Text(firebaseTestProvider.list[index].id),
                    onTap: () {
                      firebaseTestProvider.list[index].value = "update";
                      firebaseTestProvider.updateData(index);
                    },
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("삭제?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                firebaseTestProvider.deleteData(index);
                                Navigator.of(context).pop();
                              },
                              child: Text("삭제"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("닫기"),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
