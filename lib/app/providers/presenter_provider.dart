import 'package:flutter/material.dart';
import 'package:portfolio2/app/services/main_service.dart';

class PresenterProvider extends ChangeNotifier {
  final MainViewService mainService = MainViewService();

  final presenterScaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get key => presenterScaffoldKey;

  MainViewService get main => mainService;
}
