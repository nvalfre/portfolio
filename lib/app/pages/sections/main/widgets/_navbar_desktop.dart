part of '../main_section.dart';

const themeDescription = 'Theme';

class _NavbarDesktop extends StatefulWidget {
  const _NavbarDesktop({Key? key}) : super(key: key);

  @override
  State<_NavbarDesktop> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<_NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    String formattedDate = getDate();

    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: size.width / 8, vertical: 10),
        color: theme.navBarColor,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 8),
              child: NavBarLogo(),
            ),
            ...Configs.navBarNames.asMap().entries.map(
                  (e) => NavBarActionButton(
                label: e.value,
                index: e.key,
              ),
            ),
            SpaceSizedBox.expandedInf!,
            Text(themeDescription,
                style: TextStyle(
                  fontSize: Responsive.isFontSize(context, 10),
                  fontWeight: FontWeight.w400,
                  color: theme.textColor.withOpacity(0.6),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: InkWell(
                  onTap: () {
                    context.read<ThemeCubit>().updateTheme(!state.isDarkThemeOn);
                  },
                  child: Image.network(
                    state.isDarkThemeOn ? darkIconImgUrl : lightIconImgUrl,
                    height: 30,
                    width: 30,
                    color: state.isDarkThemeOn ? Colors.black : Colors.white,
                  )),
            ),
            getDateText(formattedDate, context, theme)
            // Space.x!,
          ],
        ),
      );
    });
  }

  static Text getDateText(String formattedDate, BuildContext context, ThemeData theme) {
    return Text(formattedDate,
              style: TextStyle(
                fontSize: Responsive.isFontSize(context, 10),
                fontWeight: FontWeight.w400,
                color: theme.textColor.withOpacity(0.6),
              ));
  }

  static String getDate() {
    const pattern = 'yyyy-MM-dd';
    final DateFormat formatter = DateFormat(pattern);
    final String formattedDate = formatter.format(DateTime.now());

    return formattedDate;
  }
}
