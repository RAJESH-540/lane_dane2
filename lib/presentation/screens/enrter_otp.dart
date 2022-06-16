import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../custom_wigets/elvated_btn.dart';

class OTPEnter extends StatefulWidget {
  const OTPEnter({Key? key}) : super(key: key);

  @override
  State<OTPEnter> createState() => _OTPEnterState();
}

class _OTPEnterState extends State<OTPEnter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
         padding: const EdgeInsets.fromLTRB(26, 200.0, 26.0, 20.0),
         child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Image.asset("images/enter_otp.png",width: 300, height: 200,fit: BoxFit.cover ),
              const SizedBox(height: 40,),
             Text("OTP Verification",
                 style:
                 GoogleFonts.roboto(
                     fontSize: 24.0,
                     fontWeight: FontWeight.w900
                 )),
               const SizedBox(height: 10.0,),
              Row(
                children: [
                  Text("Enter the OTP sent to ", style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),),
                  Text("+91 7452 159 357 ", style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                  ),),

                ],
              ),
              const SizedBox(height: 40.0,),
             OTPTextField(
               length: 4,
               width: MediaQuery.of(context).size.width,
               fieldWidth: 80,
               style: const TextStyle(
                   fontSize: 17
               ),
               textFieldAlignment: MainAxisAlignment.spaceAround,
               fieldStyle: FieldStyle.underline,
               onCompleted: (pin) {
                 print("Completed: " + pin);
               },
             ),
              const SizedBox(height: 40.0,),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 CustomButton(onPressed: (){
                 }, buttonName: 'Submit'),
               ],
             ),


           ],
         ),
       ),
    );
  }
}
