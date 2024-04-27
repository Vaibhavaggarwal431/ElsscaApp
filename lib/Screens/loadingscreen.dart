
import 'package:flutter/material.dart';
import 'package:task_apps/Screens/singuppage.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SingupPage()));
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SizedBox(height: 250,),
             Image.asset("assets/images/Group 52780.png"),
              SizedBox(height: 250,),
             Column(
               children: [
                 Text("Powered by Oyelabs",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.grey,fontSize: 15),),
                 Text("WITH LOVE💙",style: TextStyle(color: Colors.blueAccent,fontSize: 15),)
               ],
             )

           ],
        ),
      ),
    );
  }
}
