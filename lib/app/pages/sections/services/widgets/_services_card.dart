part of '../services_responsive.dart';

class _ServiceCard extends StatefulWidget {
  final CustomCard serviceCard;

  const _ServiceCard({Key? key, required this.serviceCard}) : super(key: key);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Container(
        width: Responsive.isTablet(context) ? 400 : 300,
        // height: AppDimensions.normalize(100),
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        decoration: BoxDecoration(
          // gradient: isHover ? pinkpurple : grayBack,
          gradient: isHover ? greenCyan : theme.serviceCard,
          borderRadius: BorderRadius.circular(15),
          boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.serviceCard.icon,
              height: 60,
            ),
            SpaceSizedBox.verticalSpace(2.w)!,
            Text(widget.serviceCard.title ?? 'Service',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isHover ? whiteColor : theme.textColor,
                )),
            SpaceSizedBox.verticalSpace(1.w)!,
            if (Responsive.isDesktop(context))
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.serviceCard.listItems
                      .map((e) => Row(
                            children: [
                              const Text('🛠   '),
                              Text(e,
                                  style: TextStyle(
                                    color:
                                        isHover ? whiteColor : theme.textColor,
                                  )),
                            ],
                          ))
                      .toList()),
            if (Responsive.isMobile(context) || Responsive.isTablet(context))
              ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children: widget.serviceCard.listItems
                      .map((e) => Row(
                            children: [
                              const Text('🛠   '),
                              Text(e,
                                  style: TextStyle(
                                    color:
                                        isHover ? whiteColor : theme.textColor,
                                  )),
                            ],
                          ))
                      .toList()),
          ],
        ),
      ),
    );
  }
}
