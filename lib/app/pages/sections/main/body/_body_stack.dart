import 'package:flutter/cupertino.dart';

import '_body.dart';

Stack get bodyContainer {
  const body = Body();
  const bodyStack = [body];

  return Stack(children: bodyStack);
}
