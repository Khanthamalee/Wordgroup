import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/demension/demension.dart';
import 'package:todolist/widget/font.dart';

class CardDetail extends StatefulWidget {
  String? Text;
  Color? color;
  double? fontSize;
  Color? Textcolor;
  double? margintop;
  double? marginbotton;
  double? marginleft;
  double? marginright;
  double? pdtbottom;

  CardDetail(
      {super.key,
      required this.Text,
      required this.color,
      required this.fontSize,
      required this.Textcolor,
      this.marginbotton,
      this.margintop,
      this.marginleft,
      this.marginright,
      this.pdtbottom});

  @override
  State<CardDetail> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CardDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            left: widget.marginleft ?? DimensionStaticWidth(context, 5),
            top: widget.margintop ?? DimensionStaticHeight(context, 5),
            right: widget.marginright ?? DimensionStaticWidth(context, 5),
            bottom: widget.marginbotton ?? DimensionStaticHeight(context, 5)),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage("assets/word/${widget.Text}.png"),
                  fit: BoxFit.scaleDown),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(
                  Radius.circular(DimensionStaticHeight(context, 20))),
              color: widget.color),
          child: Padding(
            padding: EdgeInsets.only(
              bottom: widget.pdtbottom ?? DimensionStaticHeight(context, 8),
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                "${widget.Text}",
                style: GoogleFonts.getFont(
                  font,
                  fontSize: widget.fontSize,
                  color: widget.Textcolor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ));
  }
}
