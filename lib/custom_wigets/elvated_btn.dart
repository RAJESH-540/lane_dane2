import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lane_dena/colors/colors.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key, required this.onPressed, required this.buttonName}) : super(key: key);
  final VoidCallback onPressed;
   final String buttonName;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
       style: ElevatedButton.styleFrom(
          primary: greenColor,
          minimumSize: Size(300.0, 50.0),
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(12)
         )

       ),
        onPressed: widget.onPressed,
        child: Text(widget.buttonName,
          style: GoogleFonts.roboto(
          fontWeight: FontWeight.w700,
             fontSize: 20.0,
            letterSpacing: 0.5,
            color: Colors.white
        ),));
  }
}
