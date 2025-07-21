import 'package:flutter/material.dart';
import '../models/project.dart';
import '../services/project_service.dart';
import '../widgets/project_card/project_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Project>> _futureProjects;

  @override
  void initState() {
    super.initState();
    _futureProjects = ProjectService.fetchProjects();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Portfolio', style: TextStyle(fontSize: 32)),
        centerTitle: true,
        elevation: 0,
      ),
      body: FutureBuilder<List<Project>>(
        future: _futureProjects,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator(color: Colors.white));
          } else if (snapshot.hasError) {
            return Center(child: Text('Erreur: \\${snapshot.error}', style: const TextStyle(color: Colors.white)));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Aucun projet trouvé.', style: TextStyle(color: Colors.white)));
          }
          final projects = snapshot.data!;
          return LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = 4;
              crossAxisCount = _adjustCrossAxisCount(constraints.maxWidth, crossAxisCount);
              return GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 16 / 9,
                ),
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  return ProjectCard(project: projects[index]);
                },
              );
            },
          );
        },
      ),
    );
  }

  int _adjustCrossAxisCount(double width, int crossAxisCount) {
    double cardWidth = width / crossAxisCount;
    while (cardWidth < 400 && crossAxisCount > 1) {
      crossAxisCount--;
      cardWidth = width / crossAxisCount;
    }
    return crossAxisCount;
  }
} 