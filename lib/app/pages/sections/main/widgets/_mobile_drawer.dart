part of '../main_section_responsive.dart';

const lightModeText = "Light Mode";
const darkModeText = "Dark Mode";
const resumeText = 'RESUME';

class _MobileDrawer extends StatelessWidget {
  const _MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    // theme
    var theme = Theme.of(context);
    return Drawer(
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {

          return Material(
            color: theme.scaffoldBackgroundColor,
            child: Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: NavBarLogo()),
                  const Divider(),
                  ListTile(
                    leading: Icon(
                      state.isDarkThemeOn
                          ? Icons.dark_mode_outlined
                          : Icons.light_mode,
                      // color: theme.textColor,
                    ),
                    title:
                        Text(state.isDarkThemeOn ? lightModeText : darkModeText),
                    trailing: Switch(
                      value: state.isDarkThemeOn,
                      activeColor: theme.primaryColor,
                      inactiveTrackColor: Colors.grey,
                      onChanged: (newValue) {
                        context.read<ThemeCubit>().updateTheme(newValue);
                      },
                    ),
                  ),
                  const Divider(),
                  ...Configs.navBarNames.asMap().entries.map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MaterialButton(
                            hoverColor: theme.primaryColor.withAlpha(70),
                            onPressed: () {
                              // scrollProvider.scrollMobile(e.key);
                              scrollProvider.jumpTo(e.key);
                              Navigator.pop(context);
                            },
                            child: ListTile(
                              leading: Icon(
                                Configs.drawerIcons[e.key],
                                // color: theme.primaryColor,
                              ),
                              title: Text(
                                e.value,
                                // style: AppText.l1,
                              ),
                            ),
                          ),
                        ),
                      ),
                  SpaceSizedBox.verticalSpace(5.w)!,
                  ColorChageButton(
                    text: resumeText,
                    onTap: () {
                      openURL(resume);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
