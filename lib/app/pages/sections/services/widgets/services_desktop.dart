part of '../services_responsive.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  ServiceDesktopState createState() => ServiceDesktopState();
}

class ServiceDesktopState extends State<ServiceDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: '\nWhat I can do?'),
          SpaceSizedBox.verticalSpace(1.w)!,
          CustomSectionSubHeading(text: servicesSubHeading),
          SpaceSizedBox.verticalSpace(2.w)!,
          Wrap(
            spacing: width * 0.03,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: servicesUtils
                .asMap()
                .entries
                .map(
                  (e) => _ServiceCard(serviceCard: e.value),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
