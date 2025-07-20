import 'technology.dart';

class Project {
  final int id;
  final String title;
  final String? client;
  final String thumbnail;
  final String platform;
  final String projectDescription;
  final String? projectReason;
  final List<Technology> technologies;
  final bool professional;

  Project({
    required this.id,
    required this.title,
    this.client,
    required this.thumbnail,
    required this.platform,
    required this.projectDescription,
    this.projectReason,
    required this.technologies,
    required this.professional,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    var techList = json['technologies'] as List<dynamic>? ?? [];
    return Project(
      id: json['id'],
      title: json['title'],
      client: json['client'],
      thumbnail: json['thumbnail'],
      platform: json['platform'],
      projectDescription: json['project_description'],
      projectReason: json['project_reason'],
      technologies: techList.map((t) => Technology.fromJson(t)).toList(),
      professional: json['professional'],
    );
  }
} 