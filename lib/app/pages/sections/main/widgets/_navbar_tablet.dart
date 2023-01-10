part of '../main_section_responsive.dart';

class _NavBarTablet extends StatefulWidget {
  const _NavBarTablet({Key? key}) : super(key: key);

  @override
  State<_NavBarTablet> createState() => _NavBarTabletState();
}

class _NavBarTabletState extends State<_NavBarTablet> {
  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<PresenterProvider>(context);
    var theme = Theme.of(context);
    return Container(
      color: theme.navBarColor,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? 10.w : 10, vertical: 10),
      child: Row(
        children: [
          IconButton(
            highlightColor: Colors.white54,
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          SpaceSizedBox.expandedInf!,
          const NavBarLogo(),
          // Space.x1!,
        ],
      ),
    );
  }
}