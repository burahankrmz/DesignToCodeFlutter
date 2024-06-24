import 'package:flutter/material.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xFFF3F8FE),
        boxShadow: [
          BoxShadow(
            offset: const Offset(-1, 2),
            blurRadius: 27,
            spreadRadius: 0,
            color: const Color(0xff709BD0).withOpacity(0.1)
          )
        ],
        border: Border.all(
          color: const Color(0x33ABCCF0), // %20 opacity ile renk (0x33 -> %20 opacity)
          width: 0.2, // Stroke kalınlığı
        ),
      ),
      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Color(0xffB8B8B8), size: 20),
          border: InputBorder.none,
          hintText: "Find things to do",
          hintStyle: TextStyle(color: Color(0xffB8B8B8), fontSize: 13)
        ),
      )
    );
  }
}