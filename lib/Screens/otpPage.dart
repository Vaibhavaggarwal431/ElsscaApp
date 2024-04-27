import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_apps/Screens/locationpage.dart';

class OtpPage extends StatefulWidget {

  String verificationid;
  OtpPage({super.key,required this.verificationid});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40,),
          Center(
            child: Container(
              height: 166,
              width: 187,
              child: Center(child: Image.asset("assets/images/paass.png")),
            ),
          ),
          SizedBox(height: 45,),
          Text("OTP Verification",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26,color: Colors.black),),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Enter the OTP sent to ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.black),),
              Text("+1 9879878975",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),)
            ],
          ),
          SizedBox(height: 25,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: TextFormField(
                    controller: otpController,
                    onChanged: (value){
                      if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: TextFormField(
                      controller: otpController,
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: TextFormField(
                      controller: otpController,
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: TextFormField(
                      controller: otpController,
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: TextFormField(
                      controller: otpController,
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: TextFormField(
                      controller: otpController,
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ), // form field otp
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("OTP not recived?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.grey),),
              SizedBox(width: 5,),
              InkWell(
                  child: Text("RESEND OTP",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,),))
            ],
          ),
          SizedBox(height: 35,),
          InkWell(
            onTap: ()async{
              try{
                PhoneAuthCredential credential = await PhoneAuthProvider.credential(verificationId: widget.verificationid, smsCode: otpController.text.toString());

                FirebaseAuth.instance.signInWithCredential(credential).then((value){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationPage()));
                });

              }catch(ex){
                log(ex.toString());

              }
            },
            child: Container(
              margin: EdgeInsets.only(left: 20,top: 0,right: 20,bottom: 10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.black
              ),
              child: Center(child: Text("VERIFY & PROCEED",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white),)) ,
            ),
          ),
        ],
      ),
    );
  }
}
