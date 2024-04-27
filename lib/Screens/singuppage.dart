import 'package:flutter/material.dart';
import 'package:task_apps/Screens/loginpage.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({super.key});

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  TextEditingController phonecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 470,
            width: double.infinity,
            child: Image.asset("assets/images/Frame.png",fit: BoxFit.cover,),
          ),
          SizedBox(height: 0,),
          Column(
            children: [
              Text("Your Home serevices Expert",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.black),),
              SizedBox(height: 5,),
              Text("Continue with phone Number",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(height: 9,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14,vertical:20 ),
            padding: EdgeInsets.symmetric(horizontal: 7,vertical: 9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black12
            ),
            child: Row(
              children: [
                Icon(Icons.flag_circle,size: 30,),
                SizedBox(width: 9,),
                Text("(USA)",style: TextStyle(fontSize: 17,color: Colors.grey),),
                SizedBox(width: 9,),
                Text("+1",style: TextStyle(fontSize: 17,color: Colors.grey),),
                SizedBox(width: 3,),
                Icon(Icons.arrow_drop_down_outlined),
                SizedBox(width: 1,),
                Text("|",style: TextStyle(fontSize: 28,color: Colors.grey),),
                SizedBox(width: 5,),
                Expanded(
                  child: TextField(
                    controller: phonecontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter Mobile Number"
                    ),

                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8,),
          InkWell(
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 20,top: 0,right: 20,bottom: 10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.black
              ),
              child: Center(child: Text("SIGN UP",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),)) ,
            ),
          ),
          Text("VIEW OTHER OPTION",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.lightBlueAccent)),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ALREADY HAVE AN ACCOUNT?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.grey),),
              SizedBox(width: 5,),
              InkWell(
                  child: Text("LOG IN",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,),))
            ],
          )

        ],
      ),
    );
  }
}
