import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class DashboardLibraryTab extends StatelessWidget {
  const DashboardLibraryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          color: AppColors.card,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.orange.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.book, color: AppColors.textPrimary),
            ),
            title: Text(
              'Book Title $index',
              style: const TextStyle(color: AppColors.textPrimary),
            ),
            subtitle: Text(
              'Author $index',
              style: const TextStyle(color: AppColors.textSecondary),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
        );
      },
    );
  }
}
