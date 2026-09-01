class ProjectModel {
  final String title;
  final String subtitle;
  final String period;
  final String url;
  final String description;
  final String image;
  final List<String> technologies;

  const ProjectModel({
    required this.title,
    required this.subtitle,
    required this.period,
    required this.url,
    required this.description,
    required this.image,
    required this.technologies,
  });
}
