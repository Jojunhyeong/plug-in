class Test {
  String? _id;
  late String _memo;

  String get memo => _memo;
  String get id => _id!;

  set value(String value) {
    _memo = value;
  }

  Test({String? id, required String memo}) {
    _id = id;
    _memo = memo;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "memo": _memo,
    };
    return map;
  }

  factory Test.fromMap(Map<String, dynamic> map, String id) {
    return Test(
      id: id,
      memo: map["memo"],
    );
  }
}
