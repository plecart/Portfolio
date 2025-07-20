class Project {
  final int id;
  final String title;
  final String thumbnail;
  final bool professional;

  Project({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.professional,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['id'],
      title: json['title'],
      thumbnail: json['thumbnail'],
      professional: json['professional'],
    );
  }
} 