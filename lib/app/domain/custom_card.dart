class CustomCard {
  final String icon;
  final String title;
  final String description;

  final List<String> listItems;
  final String? banners;
  final String? link;

  CustomCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.listItems,
    this.banners,
    this.link,
  });
}