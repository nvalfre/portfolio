class Configs {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  Configs(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool});
}

List<Configs> servicesUtils = [
  Configs(
    name: 'Backend Developer',
    icon: 'assets/icons/backend.svg',
    description: "Developing high scale backend apps. Utilize my skills and contribute to successful web projects.",
    tool: ['Java', 'Golang', 'Rust', 'Node'],
  ),
  Configs(
    name: 'Android App Development',
    icon: 'assets/icons/android.svg',
    description: "Highly skilled mobile app developer seeking new opportunities to create innovative and user-friendly apps.",
    tool: ['Flutter', 'React Native', 'Android (Kotlin or Java)'],
  ),
  Configs(
    name: 'iOS App Development',
    icon: 'assets/icons/apple.svg',
    description: "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: ['Flutter', 'React Native'],
  ),
  Configs(
    name: 'Web Development',
    icon: 'assets/icons/website.svg',
    description: "Web development wizard seeking new challenges and opportunities.",
    tool: ['Flutter', 'Html,css,js', 'Android (Kotlin or Java)'],
  ),
];
