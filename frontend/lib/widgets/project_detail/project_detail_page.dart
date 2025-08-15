import 'package:flutter/material.dart';
import '../../models/project.dart';
import '../utils/constants.dart';

class ProjectDetailPage extends StatelessWidget {
  final Project project;

  const ProjectDetailPage({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          project.title,
          style: const TextStyle(
            color: AppColors.white,
            fontFamily: AppTypography.fontFamily,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image du projet
            _buildProjectImage(),
            
            // Contenu
            Padding(
              padding: const EdgeInsets.all(AppDimensions.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Titre et description
                  _buildTitleSection(),
                  
                  const SizedBox(height: AppDimensions.defaultPadding),
                  
                  // Informations du projet
                  _buildProjectInfo(),
                  
                  const SizedBox(height: AppDimensions.defaultPadding),
                  
                  // Technologies
                  _buildTechnologiesSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectImage() {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(project.thumbnail),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildTitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          project.title,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: AppTypography.fontFamily,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          project.projectDescription,
          style: const TextStyle(
            color: AppColors.white54,
            fontSize: 16,
            fontFamily: AppTypography.fontFamily,
            height: 1.5,
          ),
        ),
      ],
    );
  }

  Widget _buildProjectInfo() {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.defaultPadding),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Informations du projet',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: AppTypography.fontFamily,
            ),
          ),
          const SizedBox(height: 16),
          _buildInfoRow('Plateforme', project.platform),
          if (project.client != null)
            _buildInfoRow('Client', project.client!),
          if (project.projectReason != null)
            _buildInfoRow('Raison du projet', project.projectReason!),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              '$label:',
              style: const TextStyle(
                color: AppColors.white54,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: AppTypography.fontFamily,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 14,
                fontFamily: AppTypography.fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTechnologiesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Technologies utilisées',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: AppTypography.fontFamily,
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: project.technologies.map((tech) => 
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: AppColors.white24),
              ),
              child: Text(
                tech.name,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppTypography.fontFamily,
                ),
              ),
            ),
          ).toList(),
        ),
      ],
    );
  }
} 