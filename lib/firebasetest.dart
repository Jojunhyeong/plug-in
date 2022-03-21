import 'package:flutter/material.dart';
import 'package:plug_in/firebase_test_provider.dart';
import 'package:provider/provider.dart';

import 'ui/firebasetest_view.dart';

class FirebaseTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FirebaseTestProvider(),
      child: firebasetest_view(),
    );
  }
}
