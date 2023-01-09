import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app/config/links.dart';
import 'package:portfolio/app/core/configs/app.dart';
import 'package:portfolio/app/core/configs/configs.dart';
import 'package:portfolio/app/core/responsive/responsive.dart';
import 'package:portfolio/app/core/theme/cubit/theme_cubit.dart';
import 'package:portfolio/app/pages/sections/main/configs.dart';
import 'package:portfolio/app/pages/widgets/color_chage_btn.dart';
import 'package:portfolio/app/pages/widgets/navbar_actions_button.dart';
import 'package:portfolio/app/pages/widgets/navbar_logo.dart';
import 'package:portfolio/app/providers/presenter_provider.dart';
import 'package:portfolio/app/providers/scroll_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/core/util/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

part 'widgets/_navbar_desktop.dart';
part 'widgets/_navbar_tablet.dart';
part 'widgets/_mobile_drawer.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfigs.init(context);
    final drawerProvider = Provider.of<PresenterProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Responsive(
          desktop: _NavbarDesktop(),
          mobile: _NavBarTablet(),
          tablet: _NavBarTablet(),
        ),
      ),
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return drawerProvider.mainService
              .buildMainStack(state: state, height: height, width: width);
        },
      ),
    );
  }
}
