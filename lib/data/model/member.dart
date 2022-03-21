import 'package:firebase_auth/firebase_auth.dart';
import 'package:plug_in/data/model/route.dart';

class Member {
  String _uid;

  String _email;

  //String _coment;

  //double _today;

  //double _now;

  //double _goal;

  String get uid => _uid;

  //String get coment => _coment;

  //double get today => _today;

  //double get now => _now;

  //double get goal => _goal;

  Member({
    required String email,
    required String uid,
    List<PlugInRoute>? routes,
  })  : _email = email,
        _uid = uid;

  factory Member.toMember(User user) {
    return Member(email: user.email!, uid: user.uid);
  }

  String get email => _email;
}

class Memo {
  String? _id;
  late String _email;
  late String _password;
  late String _country;
  late double _weight;

  String get id => _id!;

  String get email => _email;

  set ema(String value) {
    _email = value;
  }

  String get password => _password;

  set pas(String value) {
    _password = value;
  }

  String get country => _country;

  set cou(String value) {
    _country = value;
  }

  double get weight => _weight;

  set wei(double value) {
    _weight = value;
  }

  Memo(
      {String? id,
      required String email,
      password,
      country,
      required double weight}) {
    _id = id;
    _email = email;
    _password = password;
    _country = country;
    _weight = weight;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "email": _email,
      "password": _password,
      "country": _country,
      "weight": _weight,
    };
    return map;
  }

  factory Memo.fromMap(Map<String, dynamic> map, String id) {
    return Memo(
      id: id,
      email: map["eamil"],
      password: map["password"],
      country: map["country"],
      weight: map["weight"],
    );
  }
}
