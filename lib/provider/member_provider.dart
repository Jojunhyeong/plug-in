import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:plug_in/data/service/member_service.dart';

import '../../data/model/member.dart';

class MemberProvider with ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;
  MemberService _memberService = MemberService();

  Member? _member;
  bool _selectLogin = false;
  String _selectedValue = "Select Country";
  String? email;
  String? password;
  String? weight;
  List<String> _valueList = ['Select Country', 'korea', 'United States'];

  get member => _member;
  get selectLogin => _selectLogin;
  get selectedValue => _selectedValue;
  List<String> get valueList => _valueList;

  void toggle() {
    _selectLogin = !_selectLogin;
    notifyListeners();
  }

  bool auth() {
    User? user = _auth.currentUser;
    if (user != null) {
      print(user.email);
      return true;
    }
    return false;
  }

  signUp({required String email, required String password}) async {
    bool result = await _memberService.signUp(email: email, password: password);
    return result;
  }

  signIn({required String email, required String password}) async {
    UserCredential userCredential =
        await _memberService.signIn(email: email, password: password);
    _member = Member.toMember(userCredential.user!);
    notifyListeners();
  }

  logOut() async {
    await _memberService.logOut();
  }

  void changeSelectValue(String value) {
    _selectedValue = value;
    notifyListeners();
  }

  void sendFormDatas(String email, String password, String weight) {
    this.email = email;
    this.password = password;
    this.weight = weight;
    _memberService.memmo(email, password, weight);
  }
}
