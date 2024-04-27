import 'package:flutter/material.dart';
import 'package:task_apps/Screens/Homepage.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 320,
            child: Image.asset("assets/images/Group 52627 (1).png",),
          ),
          SizedBox(height: 55,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage()));
            },

            child: Container(
              margin: EdgeInsets.only(left: 20,top: 0,right: 20,bottom: 10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.black
              ),
              child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(Icons.my_location_outlined,color: Colors.white,),
                      SizedBox(width: 7,),
                      Text("Your current location",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white),)
                    ],
                  )) ,
            ),
          ),
          SizedBox(height: 15,),
          Container(
              margin: EdgeInsets.only(left: 20,top: 0,right: 20,bottom: 10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.black12
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search,color: Colors.grey,size: 29,),
                  SizedBox(width: 10,),
                  Text("Some other location",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey),)
                ],
              )
          ),
        ],
      ),
    );
  }
}
