import 'package:flutter/material.dart';
import 'package:portfolio/app/services/main_service.dart';

class PresenterProvider extends ChangeNotifier {
  final MainViewService mainViewService = MainViewService();

  final presenterScaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get key => presenterScaffoldKey;

  MainViewService get main => mainViewService;
}
