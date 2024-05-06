import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/widget/font.dart';

class NoData extends StatelessWidget {
  String? topic;
  NoData({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "${topic}",
        style: GoogleFonts.getFont(font,
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Topic extends StatelessWidget {
  String? topic;
  Topic({super.key, this.topic});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        topic != null ? "$topic" : "Grouping word",
        style: GoogleFonts.getFont(font,
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
