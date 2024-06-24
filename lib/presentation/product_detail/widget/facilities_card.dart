import 'package:flutter/material.dart';

class FacilitiesCard extends StatelessWidget {
  final IconData? facilitiesIcon;
  final String facilitiesName;
  const FacilitiesCard({super.key, required this.facilitiesIcon, required this.facilitiesName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 77,
      height: 74,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xff196EEE).withOpacity(0.05),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(facilitiesIcon, size: 32, color: const Color(0xffB8B8B8)),
          const SizedBox(height: 6),
          Text(facilitiesName, style: const TextStyle(fontSize: 10, color: Color(0xffC9C9C9)),)
        ],
      ),
    );
  }
}