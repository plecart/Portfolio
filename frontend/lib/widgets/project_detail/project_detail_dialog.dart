import 'package:flutter/material.dart';
import '../../models/project.dart';
import '../utils/constants.dart';

class ProjectDetailDialog extends StatelessWidget {
  final Project project;

  const ProjectDetailDialog({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            // Header avec image et titre
            _buildHeader(),
            
            // Contenu principal
            Expanded(
              child: _buildContent(),
            ),
            
            // Footer avec boutons
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        image: DecorationImage(
          image: NetworkImage(project.thumbnail),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.7),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                project.title,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppTypography.fontFamily,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                project.projectDescription,
                style: const TextStyle(
                  color: AppColors.white54,
                  fontSize: 16,
                  fontFamily: AppTypography.fontFamily,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimensions.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Description complète
          const Text(
            'Description',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: AppTypography.fontFamily,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            project.projectDescription,
            style: const TextStyle(
              color: AppColors.white54,
              fontSize: 14,
              fontFamily: AppTypography.fontFamily,
            ),
          ),
          
          const SizedBox(height: AppDimensions.defaultPadding),
          
          // Informations du projet
          const Text(
            'Informations',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: AppTypography.fontFamily,
            ),
          ),
          const SizedBox(height: 8),
          _buildInfoItem('Plateforme', project.platform),
          if (project.client != null)
            _buildInfoItem('Client', project.client!),
          if (project.projectReason != null)
            _buildInfoItem('Raison', project.projectReason!),
          
          const SizedBox(height: AppDimensions.defaultPadding),
          
          // Technologies utilisées
          const Text(
            'Technologies',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: AppTypography.fontFamily,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: project.technologies.map((tech) => 
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.primaryBackground,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  tech.name,
                  style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 12,
                    fontFamily: AppTypography.fontFamily,
                  ),
                ),
              ),
            ).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              '$label: ',
              style: const TextStyle(
                color: AppColors.white54,
                fontSize: 14,
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

  Widget _buildFooter(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'Fermer',
              style: TextStyle(
                color: AppColors.white54,
                fontFamily: AppTypography.fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }
} 