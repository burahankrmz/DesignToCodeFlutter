import 'package:daily_design_to_code/root/app/app_constants.dart';
import 'package:daily_design_to_code/root/data/projects_list.dart';
import 'package:flutter/material.dart';

class RootHome extends StatelessWidget {
  const RootHome({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(AppConstants.projectName, style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          elevation: 1,
        ),
        body: Center(
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
            itemCount: ProjectsList.projectList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => Navigator.pushNamedAndRemoveUntil(context ,ProjectsList.projectList[index].projectInitialRoute, (route) => false),
                borderRadius: BorderRadius.circular(16),
                child: Card(
                  child: Center(
                    child: Text(ProjectsList.projectList[index].projectName)
                  ),
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}