import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task_apps/Screens/otpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phonescontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
          ),
          Text(
            "Welcome Back!",
            style: TextStyle(
                fontWeight: FontWeight.w800, color: Colors.black, fontSize: 27),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
              margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color(0xFF7583CA)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Image.asset("assets/images/icons8-facebook-48.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "CONTINUE WITH FACEBOOK",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              )),
          SizedBox(
            height: 12,
          ),
          Container(
              margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.black12),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child:
                        Image.asset("assets/images/icons8-google-48 (1).png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "CONTINUE WITH GOOGLE",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  )
                ],
              )),
          SizedBox(
            height: 50,
          ),
          Text(
            "OR CONTINUE WITH PHONE NUMBER",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 21, vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.black12),
            child: Row(
              children: [
                Icon(
                  Icons.flag_circle,
                  size: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "(USA)",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "+91",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                Icon(Icons.arrow_drop_down_outlined),
                Text(
                  "|",
                  style: TextStyle(fontSize: 28, color: Colors.grey),
                ),
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: TextField(
                    controller: phonescontroller,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Mobile Number"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () async {

              await FirebaseAuth.instance.verifyPhoneNumber(
                  verificationCompleted: (PhoneAuthCredential credential) {},
                  verificationFailed: (FirebaseAuthException ex) {},
                  codeSent: (String verificationid, int? resendtoken) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OtpPage(
                                  verificationid: verificationid,
                                )));
                  },
                  codeAutoRetrievalTimeout: (String verifcationid) {},
                  phoneNumber:"+91"+ phonescontroller.text.toString());
            },
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28), color: Colors.black),
              child: Center(
                  child: Text(
                "LOG IN",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "DON'T HAVE AN ACCOUNT?",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 5,
              ),
              InkWell(
                  child: Text(
                "SIGN UP",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
