import 'package:flutter/material.dart';

class PresenterProvider extends ChangeNotifier {
  final presenterScaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get key => presenterScaffoldKey;
}
