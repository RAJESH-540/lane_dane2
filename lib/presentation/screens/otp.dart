import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lane_dena/colors/colors.dart';
import 'package:lane_dena/custom_wigets/elvated_btn.dart';
import 'package:lane_dena/routes/route.gr.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 20),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset("images/otp_onBoarding.png",
                      height: 360,width: 301,fit: BoxFit.cover)),
               const SizedBox(height: 28.0,),
              Text("OTP Verification",
                style:
                    GoogleFonts.roboto(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w900
                    )),

                // TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold) ,)),
              const SizedBox(height: 10.0,),
              Text("We will send you a One Time Password ",
                style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.w400
              ),),
              const SizedBox(height: 2.0,),
              Text("on this number.", style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w400
              ),),
              const SizedBox(height: 24.0,),
              Text("Mobile Number",
                // style: TextStyle(color: Color(0xff008069) ),)
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: greenColor,
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                 decoration: const InputDecoration(

                 ),
              ),
                const SizedBox(height: 36.0,),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   CustomButton(onPressed: (){
                      context.router.push(  const OTPEnter());
                   }, buttonName: 'OTP'),
                 ],
               )
            ],
          ),
        ),
      ),
    );
  }
}






