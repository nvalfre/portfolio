import 'package:flutter/cupertino.dart';
import 'package:portfolio2/app/providers/scroll_provider.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '_body_view.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return ScrollablePositionedList.builder(
      padding: EdgeInsets.zero,
      itemCount: BodyScrollViews.views.length,
      itemBuilder: (context, index) => BodyScrollViews.views[index],
      itemScrollController: scrollProvider.itemScrollController,
    );
  }
}
