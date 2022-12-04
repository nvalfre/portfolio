import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'config/routes.dart';
import 'config/text_constants.dart';
import 'pages/main.dart';
import 'providers/presenter_provider.dart';
import 'providers/scroll_provider.dart';
import 'theme/app_theme.dart';
import 'theme/cubit/theme_cubit.dart';

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit())
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PresenterProvider()),
          ChangeNotifierProvider(create: (_) => ScrollProvider())
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
          return Sizer(builder: (context, orientation, deviceType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: appTitle,
              theme: AppTheme.themeData(state.isDarkThemeOn, context),
              initialRoute: Routes.root,
              routes: {Routes.root: (context) => Main()},
            );
          });
        }),
      ),
    );
  }
}
