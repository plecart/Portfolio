class Technology {
  final int id;
  final String name;
  final String icon;
  final String type; // 'FRONT', 'BACK', 'OTHER'

  Technology({
    required this.id,
    required this.name,
    required this.icon,
    required this.type,
  });

  factory Technology.fromJson(Map<String, dynamic> json) {
    return Technology(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
      type: json['type'],
    );
  }
} 