import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../config/config.dart';
import '../providers/presenter_provider.dart';
import '../widgets/body/_body_stack.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config.init(context);

    final presenterProvider = Provider.of<PresenterProvider>(context);

    var bc = bodyContainer;

    return Scaffold(
        key: presenterProvider.key,
        extendBodyBehindAppBar: true,
        appBar: null,
        drawer: null,
        body: bc);
  }
}
